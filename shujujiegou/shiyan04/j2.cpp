#include <bits/stdc++.h>
#include "shared.h"
using namespace std;
int h1 = 1;//标记目前的高度

string zhongjiang()//返回的值是对应的得到的n条交易，用来生成新的区块
{
    string filePath = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
    filePath += "trans_pool.txt";
    fstream outFile(filePath, std::ios::in | std::ios::out);
    if (!outFile)
    {
        return "";//交易池打开失败就返回空的跳过这一回。
    }
    string new_trans;
    int n = 3;//要求没说n的值要怎么取，所以就取了个3.
    std::vector<std::string> lines;
    string s;
    int temp = 0;//为了实现取完之后删掉，使用删除重写的方式，毕竟都是小文件，时间开销不大。
    while (getline(outFile, s))
    {
        if (temp++ < n)
        {
            new_trans += s;
            new_trans += "\n";
        }
        else
        {
            lines.push_back(s);
        }
    }
    outFile.close();
    remove("C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/trans_pool.txt");
    ofstream outFile1(filePath);
    for (const auto &modifiedLine : lines)
    {
        outFile1 << modifiedLine << std::endl;
    }
    outFile1.close();
    return new_trans;
}

void delete_trans(string s)//删除交易池中特定的交易，还是使用删除文件从新写入的方式。
{
    string ts = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
    string ys = ts + "trans_pool.txt";
    ifstream ss(ys);
    std::vector<std::string> lines;
    string s0;
    int temp = 0;
    while (getline(ss, s0))
    {
        if (s == s0)//跳过要删掉的那个
        {
            continue;
        }
        else
        {
            lines.push_back(s0);
        }
    }
    ss.close();
    remove("C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/trans_pool.txt");
    ofstream outFile1(ys);
    for (const auto &modifiedLine : lines)
    {
        outFile1 << modifiedLine << std::endl;
    }
    outFile1.close();
    return;
}

void add_trans(string s)//往交易池加入新的交易，因为重复性在别的地方检查了，所以这里不写了就。
{
    ofstream ss("C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/trans_pool.txt", ios::app);
    ss << s << endl;
    ss.close();
    return;
}

int conflict_block(string bk)//检查是否有冲突的区块。
{
    string ts = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
    string ys = ts + "head.txt";
    ifstream ss(ys);
    string next;
    getline(ss, next);
    bk = bk.substr(0, bk.find(','));
    if (bk == "")
        return 1;
    while (next != "")
    {
        ys = ts + next;
        fstream ss(ys, ios::in|ios::out|ios::app);
        if(!ss)
        return 0;
        getline(ss, next);
        // 注意一下block的格式
        string prevhash;
        getline(ss, prevhash);

        if (prevhash == bk)
        {
            ss.close();
            return 1;
        }
        ss.close();
    }
    return 0;
}

int have_the_trans(string msg)//重复交易的检查
{
    string ts = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
    ts += "trans_pool.txt";
    ifstream ss(ts);
    if (!ss)
    {
        return 1;
    }
    string trans;

    while (getline(ss, trans))
    {
        if (trans == msg)
            return 1;
    }
    return 0;
}

size_t get_hash()//生成哈希值
{

    std::hash<std::string> stringHash;
    // 生成随机字符串
    std::string randomString = "stop" + std::to_string(rand());

    // 生成字符串的哈希值
    std::size_t hashValue = stringHash(randomString);
    return hashValue;
}

string add_block(string s)//将新区块加入。
{
    string ts = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
    string ys = ts + "head.txt";
    ifstream ss(ys);
    string next;
    getline(ss, next);
    string old_next;
    while (next != "")
    {
        ys = ts + next;
        old_next = next;
        fstream ss1(ys, ios::in | ios::out | ios::app);
        ss1.seekg(0);
        ss1.seekp(0);
        getline(ss1, next);
        string prevhash;
        getline(ss1, prevhash);
        ss.close();
    }
    ys = ts + old_next;
    fstream ss2(ys, std::ios::in | std::ios::out);
    string hash;
    std::vector<std::string> lines;
    string temp;
    getline(ss2, hash);
    getline(ss2, hash);
    lines.push_back(hash);
    getline(ss2, hash);
    lines.push_back(hash);
    while (getline(ss2, temp))
    {
        lines.push_back(temp);
    }
    h1++;
    ss2.close();
    remove(ys.c_str());
    ofstream ss20(ys);
    ss20 << to_string(h1) << ".txt" << endl;
    for (const auto &modifiedLine : lines)
    {
        ss20 << modifiedLine << std::endl;
    }

    string new_bk = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
    new_bk += to_string(h1);
    new_bk += ".txt";
    ofstream new_file(new_bk);
    string t;
    new_file << "\n";
    new_file << hash << endl;
    string p1 = to_string(get_hash());
    new_file << p1 << endl;
    new_file << s;
    new_file.close();
    t += hash;
    t += '\n';
    t += p1;
    t += '\n';
    t += s;
    return t;
}

int main()
{
    while (1)
    {
        std::chrono::milliseconds(500);
        int t = rand() % 100;
        if (t < 10) // 中不中!
        {
            string s = zhongjiang();
            if (s == "")
                continue;
            // 交易池读取结束，所读到的交易存在new_trans里。new_trans是以\n分割的n个交易
            // 还需要加入本地区块尾部和发送到另一个区块的消息队列。
            s = add_block(s); // 添加到本地区块。
            // 添加到另一个区块，此时已经变成一行是一个区块且按照逗号分割。
            // 要把整个文件传过去？？
            //  算了，没法弄，不传文件，改成在一个文件中增加。
            // 格式：prehash,hash,trans√
            replace(s.begin(), s.end(), '\n', ',');
            ofstream pp("C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node1/block_message.txt", ios::app);
            pp << s << endl;
        }
        else
        {
            // 查看区块消息
            string blockm = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
            blockm += "block_message.txt";
            ifstream bkm(blockm);
            string blcks;
            getline(bkm, blcks);
            if (blcks != "") // 区块消息不为空
            {
                if (!conflict_block(blcks))
                {
                    // 加入本链的尾部。
                    string ts = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
                    string ys = ts + "head.txt";
                    ifstream ss(ys);
                    string next,old_next;
                    getline(ss, next);
                    
                    while (next != "")
                    {
                        ys = ts + next;
                        old_next=next;
                        ifstream ss(ys, ios::app);
                        getline(ss, next);
                        ss.close();
                    }
                    ys=ts+old_next;
                    ofstream newss(ys);
                    stringstream ss1(blcks);
                    h1++;
                    ss1<<to_string(h1)<<".txt"<<endl;
                    while(getline(ss1,next,','))
                    {
                        newss<<next<<endl;
                    }

                }

                // 删除一条区块消息
                // 还有个删除文件？？

                std::vector<std::string> lines;
                string s0;
                bkm.seekg(0);
                getline(bkm, s0);
                while (getline(bkm, s0))
                {
                    lines.push_back(s0);
                }
                remove(blockm.c_str());
                ofstream ss(blockm);
                for (const auto &modifiedLine : lines)
                {
                    ss << modifiedLine;
                    ss << endl;
                }
            }

            else // 区块消息为空
            {
                string message = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
                message += "message.txt";
                ifstream outfile(message);
                string msgline, msg;
                getline(outfile, msgline); // 读客户端消息
                if (msgline == "")         // 客户端消息为空就continue
                    continue;
                stringstream ss(msgline);
                getline(ss, msg, ',');
                if (msg == "Trans") // 是一个交易
                {
                    getline(ss, msg, ',');
                    if (!have_the_trans(msg))
                    {
                        add_trans(msg);
                    }
                }
                else if (msg == "inquire")
                { // 是一个查询
                    getline(ss, msg, ',');
                    if (msg == "Height") // 查区块高度
                    {
                        getline(ss, msg, ',');
                        string s = msg;
                        s += ".txt";
                        ifstream out(s);
                        if (!out)
                        {
                            cout << "no such Height:" << msg << "\n";
                        }
                        else
                        {
                            getline(out, s);
                            cout << "next block: " << s << endl;
                            getline(out, s);
                            cout << "PrevHash: " << s << endl;
                            getline(out, s);
                            cout << "Hash: " << s << endl;
                            cout << "Transactions: " << endl;
                            while (getline(out, s))
                            {
                                cout << s << endl;
                            }
                        }
                    }
                    else if (msg == "Hash") // 查哈希值
                    {
                        getline(ss, msg, ','); // 现在是哈希值
                        string ts = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
                        string ys = ts + "head.txt";
                        ifstream ss(ys);
                        string next;
                        getline(ss, next);
                        while (next != "")
                        {
                            ys = ts + next;
                            ifstream ss(ys);
                            getline(ss, next);
                            string hash, prevhash;
                            getline(ss, prevhash);
                            getline(ss, hash);
                            if (hash == msg)
                            {   cout<<"id"<<next<<endl;
                                cout << "next block: " << next << endl;
                                cout << "PrevHash: " << prevhash << endl;
                                cout << "Hash: " << hash << endl;
                                cout << "Transactions: " << endl;
                                while (getline(ss, hash))
                                {
                                    cout << hash << endl;
                                }
                                break;
                            }
                        }
                    }
                    else if (msg == "Show") // 全部展示
                    {
                        string ts = "C:/Users/Baijy/Desktop/homework/shujujiegou/shiyan4/node0/";
                        string ys = ts + "head.txt";
                        ifstream ss(ys);
                        string next;
                        getline(ss, next);
                        while (next != "")
                        {
                            ys = ts + next;
                            ifstream ss(ys);
                            cout << "id:" << next << endl;
                            getline(ss, next);
                            if (!ss)
                            {
                                break;
                            }
                            string hash, prevhash;
                            getline(ss, prevhash);
                            getline(ss, hash);
                            cout << "next block: " << next << endl;
                            cout << "PrevHash: " << prevhash << endl;
                            cout << "Hash: " << hash << endl;
                            cout << "Transactions: " << endl;
                            while (getline(ss, hash))
                            {
                                cout << hash << endl;
                            }
                        }
                    }
                }
                // 读取之后删除一行客户端消息
                outfile.seekg(0);
                vector<std::string> lines;
                string s1;
                getline(outfile, s1);
                while (getline(outfile, s1))
                {
                    lines.push_back(s1);
                }
                outfile.close();
                remove(message.c_str());
                ofstream outFile1(message);
                for (const auto &modifiedLine : lines)
                {
                    outFile1 << modifiedLine << std::endl;
                }
                outFile1.close();
            }
        }
    }
}