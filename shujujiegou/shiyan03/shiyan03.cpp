#include <bits/stdc++.h>
#include "rsa.h"
using namespace std;
// 定义各种结构体
struct input
{
    int pre_block = 0;
    string prevTxID;
    int prevTxOutIndex = 0;
    string scriptSig;
};

struct output
{
    string txid;
    int index = 0;
    long long value = 0;
    string script;
    int used = 0;
};

struct transaction
{
    string txid;
    int input_count = 0;
    int output_count = 0;
    vector<input> inputs;
    vector<output> outputs;
    int is_coinbase = 0;
    int legal = 1;
};

struct block
{
    int Height;
    string hash;
    string prevHash;
    string merkleRoot = "\0";
    long long nonce = 0;
    vector<transaction> transactions;
    block *nextblock = NULL;
};

struct S
{
    string s;
    S *next;
};
// 读入各个表
class Stk
{
private:
    S *tp;

public:
    Stk() : tp(nullptr) {}
    int empty()
    {
        if (tp == nullptr)
            return 1;
        else
            return 0;
    }
    void pop()
    {
        if (empty())
        {
            cout << "cannot pop" << endl;
            return;
        }
        S *x = new S;
        x = tp;
        tp = tp->next;
        delete x;
    }
    void push(const string &st)
    {
        S *x = new S;
        x->s = st;
        x->next = tp;
        tp = x;
    }
    string top()
    {
        if (tp != NULL)
            return tp->s;
    }
};

void readBlocks(block *blocks)
{
    ifstream file("blocks.csv");
    string line;
    getline(file, line);
    int count = 0;
    while (getline(file, line) && count < 32490)
    {
        stringstream ss(line);
        string item;
        vector<string> row;
        while (getline(ss, item, ','))
        {
            row.push_back(item);
        }
        count++;
        blocks->Height = stoi(row[0]);
        blocks->hash = row[1];
        blocks->prevHash = row[2];
        blocks->merkleRoot = row[3];
        blocks->nonce = stoll(row[4]);
        blocks->nextblock = new block;
        blocks = blocks->nextblock;
    }
    // printf("1");
}

void readtransaction(block *blocks)
{
    transaction ts;
    ifstream file("transactions.csv");
    string line;
    getline(file, line);
    while (getline(file, line))
    {
        stringstream ss(line);
        string item;
        vector<string> row;
        while (getline(ss, item, ','))
        {
            row.push_back(item);
        }
        // for(const auto &str : row) {
        // std::cout << str << std::endl;
        //}
        int height = stoi(row[0]);
        while ((height != blocks->Height) && (blocks->nextblock != NULL))
        {
            blocks = blocks->nextblock;
        }
        if (height == blocks->Height)
        {
            ts.txid = row[1];
            ts.is_coinbase = stoi(row[2]);
            ts.input_count = stoi(row[3]);
            ts.output_count = stoi(row[4]);
            blocks->transactions.push_back(ts);
        }
    }
    return;
}

void readIn(block *blocks)
{
    ifstream file("inputs.csv");
    string line;
    getline(file, line);
    while (getline(file, line))
    {
        stringstream ss(line);
        string item;
        vector<string> row;
        int count = 0;
        while (getline(ss, item, ','))
        {
            row.push_back(item);
            count++;
        }
        int height = stoi(row[0]);
        while (height != blocks->Height && (blocks->nextblock != NULL))
        {
            blocks = blocks->nextblock;
        }
        if (height == blocks->Height)
        {
            string id = row[1];

            for (auto &transaction : blocks->transactions)
            {
                if (transaction.txid == id)
                {
                    input get1;
                    get1.pre_block = stoi(row[2]);
                    get1.prevTxID = row[3];
                    if (count >= 4)
                        get1.prevTxOutIndex = stoi(row[4]);
                    if (count >= 6)
                        get1.scriptSig = row[5];
                    transaction.inputs.push_back(get1);
                    break;
                }
            }
            // printf("  %d\n",height);
        }
        // printf("1");
    }
}

void readOut(block *blocks)
{
    ifstream file("outputs.csv");
    string line;
    getline(file, line);
    while (getline(file, line))
    {
        stringstream ss(line);
        vector<string> row;
        string item;
        int count = 0;
        while (getline(ss, item, ','))
        {
            row.push_back(item);
            count++;
        }
        int height = stoi(row[0]);
        while (height != blocks->Height)
        {
            blocks = blocks->nextblock;
        }
        if (height == blocks->Height)
        {
            for (auto &transaction : blocks->transactions)
            {
                output out;
                out.txid = row[1];
                if (out.txid == transaction.txid)
                {
                    //printf("|%d|", count);
                    out.index = stoi(row[2]);
                    out.value = stoll(row[3]);
                    if (count >= 5)
                        out.script = row[4];
                    transaction.outputs.push_back(out);
                    break;
                }
            }
        }
    }
    //printf("1");
}

// 计数 blocks和transactions。

int blocksCount(block *blocks)
{
    int count = 0;
    while (blocks->nextblock != NULL)
    {
        count++;
        blocks = blocks->nextblock;
    }
    return count;
}

int transactionsCount(block *blocks)
{
    int count = 0;
    while (blocks->nextblock != NULL)
    {
        count += blocks->transactions.size();
        blocks = blocks->nextblock;
    }
    return count;
}
//返回运算符优先级
int compare(string s)
{
    if (s == "+" || s == "-")
    {
        return 2;
    }
    if (s == "(")
    {
        return 1;
    }
    if (s == "*" || s == "/")
    {
        return 3;
    }
    else
        return 4;
}
//返回script验证结果
int calc_stack(string out, string in)
{
    stringstream ss(out), s2(in);
    Stk stack;
    string line, l1;
    while (getline(s2, l1, ' '))
    {
        stack.push(l1);
    }
    {
        while (getline(ss, line, ' '))
        {
            if (line == ("OP_HASH160"))
            {
                hash<string> str_hash;
                string s1 = stack.top();
                string hash_value = to_string(str_hash(stack.top()));
                stack.pop();
                stack.push(hash_value);
            }
            else if (line == ("OP_EQUALVERIFY"))
            {
                string s1 = stack.top();
                stack.pop();
                string s2 = stack.top();
                stack.pop();
                int s = s1 == (s2);
                if (s == 0)
                    return 0;
            }
            else if (line == ("OP_DUP"))
            {
                string s = stack.top();
                stack.push(s);
            }
            else if (line == ("OP_BEGIN_CALC"))
            {
                Stk nums, ops;

                while (line != ("OP_END_CALC"))
                {
                    getline(ss, line, ' ');
                    if (!(line == ("+") || line == ("-") || line == ("*") || line == ("/") || line == ("(") || line == (")") || line == ("OP_END_CALC")))
                    {
                        nums.push(line);
                    }
                    else if (line != ("OP_END_CALC"))
                    {
                        if (ops.empty()) // op为空的话直接加入一个操作符
                        {
                            ops.push(line);
                            continue;
                        }
                        int ini = compare(ops.top());
                        int ini2 = compare(line); // 1(2+-3*/4)
                        if (ini2 == 1)
                        {
                            ops.push("(");
                        }

                        else if (ini2 == 4)
                        {
                            while (!(ops.top() == "("))
                            {
                                long long i1 = stoll(nums.top());
                                nums.pop();
                                long long i2 = stoll(nums.top());
                                nums.pop();
                                if (ops.top() == "*")
                                    nums.push(to_string(i1 * i2));
                                if (ops.top() == "/")
                                    nums.push(to_string(i2 / i1));
                                if (ops.top() == "+")
                                    nums.push(to_string(i1 + i2));
                                if (ops.top() == "-")
                                    nums.push(to_string(i2 - i1));
                                ops.pop();
                            }
                            ops.pop();
                        }
                        else if (ini < ini2)
                        {
                            ops.push(line);
                        }
                        else if (ini >= ini2)
                        {
                            while (ini >= ini2 && !ops.empty())
                            {
                                long long i1 = stoll(nums.top());
                                nums.pop();
                                long long i2 = stoll(nums.top());
                                nums.pop();
                                if (ops.top() == "*")
                                    nums.push(to_string(i2 * i1));
                                if (ops.top() == "/")
                                    nums.push(to_string(i2 / i1));
                                if (ops.top() == "+")
                                    nums.push(to_string(i1 + i2));
                                if (ops.top() == "-")
                                    nums.push(to_string(i2 - i1));
                                ops.pop();
                                if (!ops.empty())
                                    ini = compare(ops.top());
                            }
                            ops.push(line);
                        }
                    }
                }
                int a = 1;
                while (!ops.empty())
                {
                    long long i1 = stoll(nums.top());
                    nums.pop();
                    long long i2 = stoll(nums.top());
                    nums.pop();
                    if (ops.top() == "*")
                        nums.push(to_string(i1 * i2));
                    if (ops.top() == "/")
                        nums.push(to_string(i2 / i1));
                    if (ops.top() == "+")
                        nums.push(to_string(i1 + i2));
                    if (ops.top() == "-")
                        nums.push(to_string(i2 - i1));
                    ops.pop();
                }
                stack.push(nums.top());
            }
            else if (line == ("OP_CHECKSIG"))
            {
                string s01 = stack.top();
                stack.pop();
                string s02 = stack.top();
                stack.pop();
                Rsa rsa1;
                rsa1.init(128 / 2);
                rsa1.setPu(stoi(s01));
                BigInt ss(s02);
                bool flag = verify(rsa1, ss, s01);
                if (flag == 0)
                    return 0;
                else
                    stack.push(to_string(flag));
            }
            else
                stack.push(line);
        }
    }
    if (stack.empty())
        return 1;
    else
        return stoi(stack.top());
}
// 计算一个交易所有input引用的output的value值，如果引用非法，返回非法类型。
long long countInput(transaction transactions, block *hd)
{
    int value = 0;
    for (auto &in : transactions.inputs)
    {
        int heigt = in.pre_block;
        block *blocks = hd;
        string id = in.prevTxID;
        while (blocks->Height != heigt && (blocks->nextblock != NULL))
        { // 找到preHeight对应区块
            blocks = blocks->nextblock;
        }
        int flag = 0;
        for (auto &tr : blocks->transactions) // 遍历区块的交易，找到所需要的。
        {
            if (tr.txid == id)
            {
                flag = 1;
                if (tr.legal)
                {
                    if (!tr.outputs[in.prevTxOutIndex].used)
                    {
                        if (in.prevTxOutIndex < tr.output_count)
                        {
                            if (!calc_stack(tr.outputs[in.prevTxOutIndex].script, in.scriptSig))
                            {
                                return -4;
                            }
                            value += tr.outputs[in.prevTxOutIndex].value;
                        }
                        tr.outputs[in.prevTxOutIndex].used = 1;
                    }
                    else if (in.prevTxOutIndex >= tr.output_count)
                    {
                        return 0;
                    }
                    else
                    {
                        return -2;
                    }
                }
                else
                {
                    return -1;
                }
            }
        }
        if (flag == 0)
        {
            return 0;
        }
    }
    return value;
}

// 计算非法交易数量，同时输出非法交易数据。

int illegal(block *blocks)
{
    int count = 0;
    block *head = blocks;
    while (blocks != NULL)
    {
        for (auto &transactions : blocks->transactions)
        {
            long long inputValue = 0;
            long long outputValue = 0;
            if (transactions.is_coinbase)
                continue;
            inputValue = countInput(transactions, head);
            if (inputValue == -1) //-1 代表引用的交易非法
            {
                transactions.legal = 0;
                count++;
                cout << "Index:" << count << endl;
                cout << "id of illegal transactions: " << transactions.txid << endl;
                cout << "Height:" << blocks->Height << endl;
                cout << "reanson is using an illegal output" << endl;
                continue;
            }
            else if (inputValue == -2) // 代表input已经被使用。
            {
                transactions.legal = 0;
                count++;
                cout << "Index:" << count << endl;
                cout << "id of illegal transactions: " << transactions.txid << endl;
                cout << "Height:" << blocks->Height << endl;
                cout << "reason is using a used input" << endl;
                continue;
            }
            else if (inputValue == 0) // 代表找不到交易
            {
                transactions.legal = 0;
                count++;
                cout << "Index:" << count << endl;
                cout << "id of illegal transactions: " << transactions.txid << endl;
                cout << "Height:" << blocks->Height << endl;
                cout << "reason is can't find the input" << endl;
            }
            else if (inputValue == -4)
            {
                transactions.legal = 0;
                count++;
                cout << "Index:" << count << endl;
                cout << "id of illegal transactions: " << transactions.txid << endl;
                cout << "Height:" << blocks->Height << endl;
                cout << "reason is sig fail" << endl;
            }
            else
            {
                for (auto output : transactions.outputs)
                {
                    outputValue += output.value;
                }
                if (outputValue > inputValue)
                {
                    count++;
                    cout << "Index:" << count << endl;
                    cout << "id of illegal transactions: " << transactions.txid << endl;
                    cout << "Height:" << blocks->Height << endl;
                    cout << "reanson is input value less than output value" << endl;
                    cout << "(output value: " << outputValue << ">input value: " << inputValue << ")" << endl;
                    transactions.legal = 0;
                }
            }
        }
        blocks = blocks->nextblock;
    }
    return count;
}

// 查询某个交易对应信息

void showID(block *blocks, string id)
{
    int flag = 0;
    while (blocks != NULL)
    {
        for (auto &t : blocks->transactions)
        {
            if (t.txid == id)
            {
                flag = 1;
                if (t.is_coinbase)
                    cout << " ||is coinbase||" << endl;
                if (!t.legal)
                {
                    cout << " ||illegalal transanction!||" << endl;
                }
                if (!t.is_coinbase)
                {
                    cout << " input:" << endl;
                    for (auto &in : t.inputs)
                    {
                        cout << "  prevTxID: " << in.prevTxID << endl;
                        cout << "  pre_block: " << in.pre_block << endl;
                        cout << "  prev_TxOutIndex: " << in.prevTxOutIndex << endl;
                    }
                }
                cout << " output:" << endl;
                for (auto &out : t.outputs)
                {
                    cout << "  index:" << out.index << ' ';
                    cout << "  value:" << out.value << endl;
                }
                return;
            }
        }

        blocks = blocks->nextblock;
    }
    if (flag == 0)
    {
        cout << "no such transaction!" << endl;
    }
}

// 查询高度对应的输出。

void showHeight(block *blocks, int height)
{
    while ((blocks->Height != height) && (blocks->nextblock != NULL))
    {
        blocks = blocks->nextblock;
    }
    if (blocks->Height == height)
    {
        cout << " Height:" << blocks->Height << endl;
        cout << " hash: " << blocks->hash << endl;
        cout << " prevHash: " << blocks->prevHash << endl;
        int count = 0;
        cout << " transactions` txID:" << endl;
        for (auto &t : blocks->transactions)
        {
            count++;
            cout << t.txid << endl;
            showID(blocks, t.txid);
        }
        if (count == 0)
        {
            cout << " no transactions" << endl;
        }
    }
}

int main()
{
    block *blocks = new block;
    block *head = blocks;
    readBlocks(head);
    readtransaction(head);
    readIn(head);
    readOut(head);
    int transactionsNum = transactionsCount(head);
    printf("Counts of blocks: %d\n", blocksCount(head));
    printf("Counts of transactions: %d\n", transactionsNum);
    int illegalnum = illegal(head);
    printf("Counts of illegal: %d\n", illegalnum);
    printf("Counts of legal:%d\n", transactionsNum - illegalnum);
    printf("Please enter next option(1:input height,2:input txID,3:quit):\n");
    int n = 0;
    while (1)
    {
        scanf("%d", &n);
        int t = 0;
        string s;
        switch (n)
        {
        case 1:
            printf("Please input height:\n");
            scanf("%d", &t);
            showHeight(head, t);
            break;
        case 2:
            printf("Please input ID:\n");
            cin >> s;
            showID(head, s);
            break;
        case 3:
            return 0;
        default:
            printf("Illegal option,try again\n");
        }
    }
    return 0;
}
