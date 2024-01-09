#include <bits/stdc++.h>
#include "shared.h"
using namespace std;

// 生成查询,用p来代表目前给出的交易的总高度，从而方便查询。
int p = 0;

// 定义结构体，以便根据实验二数据生成交易。
struct input{};

struct output{};

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
}*blocks,*head;
//从实验二抄过来的读取输入
int readBlocks(block *blocks)
{   int height=0;
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
        height++;
    }
    // printf("1");
    return height;
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
//生成查询
void new_inquire()
{size_t get_hash();
    for (int number = 0; number < 2; number++)//为了在两个node中都有相同的客户消息
    {
        string filePath = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node";
        filePath += to_string(number);
        filePath += "/message.txt";
        ofstream outFile(filePath, ios_base::app);
        // 查询包括按照高度，按照哈希，全部展示,按顺序标记为0,1,2三种情况
        if (!outFile)
        {
            continue;
        }
        int t = rand() % 3;
        string s;
        switch (t)
        {
        case 0:
            s += "inquire,Height,";
            s +=to_string(rand() %(1+(p>>2)));//取一个尽量合理的高度,除以4是因为n=3，每次取走了3条交易，4差不多，同时防止出现模0错误。
            break;
        case 1:
            s += "inquire,Hash,";//哈希由随机函数生成
            s+=to_string(get_hash());
            break;
        default:
            s += "inquire,Show";
        }
        outFile << s << endl;
        outFile.close();
        
    }
    return;
}

size_t get_hash(){
    std::hash<std::string> stringHash;
    // 生成随机字符串
    std::string randomString = "stop" + std::to_string(rand());

    // 生成字符串的哈希值
    std::size_t hashValue = stringHash(randomString);
    return hashValue;
}
// 生成新交易
void new_trans(int height)
{   //cout<<height<<endl;
    for (int number = 0; number < 2; number++)
    {
        std::string filePath = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node";
        filePath += to_string(number);
        filePath += "/message.txt";
        std::ofstream outFile(filePath,ios_base::app);
        if (!outFile)
        {
            continue;
        }
        int t=rand()%height;//确保能找到交易
        //cout<<t<<endl;
        block *x=head;
        while(x->Height!=t&&(x->nextblock!=NULL))
        {
            x=x->nextblock;
        }
        string s;
        s="Trans,";
        for(auto &trans: x->transactions)
        {
            s+=trans.txid;
            s+=",";
        }
        outFile << s<<endl;
        outFile.close();
    }
    p++;
    return;
}

int main()
{   blocks =new block;
    head= blocks;
    int height=readBlocks(head);//把void改成了int，这样的到了height便于生成数据用。
    readtransaction(head);
    //cout<<height<<endl;
    while (1)
    {
        this_thread::sleep_for(chrono::seconds(1));
        // 用随机函数和switch实现发送类型的选择。
        int t1 = rand() % 2;
        switch (t1)
        {
        case 0:
            new_inquire();
            break;
        case 1:
            new_trans(height);
            break;
        }
    } 
    return 0;
}