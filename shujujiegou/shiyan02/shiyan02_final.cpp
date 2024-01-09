#include<bits/stdc++.h>
using namespace std;
//定义各种结构体
struct input{
    int pre_block=0;
    string prevTxID;
    int prevTxOutIndex=0;
    string scriptSig;
};

struct output{
    string txid;
    int index=0;
    long long value=0;
    string script;
    int used=0;
};

struct transaction{
    string txid;
    int input_count=0;
    int output_count=0;
    vector<input> inputs;
    vector<output> outputs;
    int is_coinbase=0;
    int legal=1;
};

struct block{
    int Height;
    string hash;
    string prevHash;
    string merkleRoot="\0";
    long long nonce=0;
    vector<transaction> transactions;  
    block *nextblock=NULL; 
};

//读入各个表

void readBlocks(block *blocks)
{   ifstream file("blocks.csv");
    string line;
    getline(file, line);
    int count=0;
    while (getline(file, line)&&count<32490) {
        stringstream ss(line);
        string item;
        vector<string> row;
        while (getline(ss, item, ',')) {
            row.push_back(item);
        }
        //cout<<row[0]<<' ';
        count++;
        blocks->Height = stoi(row[0]);   
        blocks->hash = row[1];
        blocks->prevHash = row[2];
		blocks->merkleRoot=row[3];
		blocks->nonce=stoll(row[4]);
        blocks->nextblock=new block;
        blocks=blocks->nextblock;
}
}

void readtransaction(block *blocks){
    transaction ts;
    ifstream file("transactions.csv");
    string line;
    getline(file,line);
    while(getline(file,line))
    {
        stringstream ss(line);
        string item;
        vector<string> row;
        while(getline(ss,item,',')){
            row.push_back(item);
        }
    int height=stoi(row[0]);
    while((height!=blocks->Height)&&(blocks->nextblock!=NULL))
    {
        blocks=blocks->nextblock;
    }
    if(height==blocks->Height){
        ts.txid=row[1];
        ts.is_coinbase=stoi(row[2]);
		ts.input_count=stoi(row[3]);
		ts.output_count=stoi(row[4]);
        blocks->transactions.push_back(ts);
    }
}
}

void readIn(block *blocks){
    ifstream file("inputs.csv");
    string line;
    getline(file,line);
    while(getline(file,line)){
        stringstream ss(line);
        string item;
        vector<string>row;
        while(getline(ss,item,','))
        {
            row.push_back(item);
        }
    int height=stoi(row[0]);
    while(height!=blocks->Height&&(blocks->nextblock!=NULL)){
        blocks=blocks->nextblock;
    }
    if(height==blocks->Height)
    {string id=row[1];
   
        for(auto &transaction : blocks->transactions)
        {
            if(transaction.txid==id)
            {   input get1;
                 get1.pre_block=stoi(row[2]);
                 get1.prevTxID=row[3];
                 get1.prevTxOutIndex=stoi(row[4]);
				 get1.scriptSig=row[5];
                transaction.inputs.push_back(get1);
                break;
            }
        }
    }
    }
}

void readOut(block *blocks)
{
    ifstream file("outputs.csv");
    string line;
    getline(file,line);
    while(getline(file,line)){
        stringstream ss(line);
        vector<string> row;
        string item;
        while(getline(ss,item,','))
        {
            row.push_back(item);
        }
        int height=stoi(row[0]);
        while(height!=blocks->Height)
        {
            blocks=blocks->nextblock;
        }
        if(height==blocks->Height)
        {
            for(auto &transaction : blocks->transactions)
            {   output out;
                out.txid=row[1];
                if(out.txid==transaction.txid)
                {
                    out.index=stoi(row[2]);
                    out.value=stoll(row[3]);
                    transaction.outputs.push_back(out);
                    break;
                }
            }
        }
    }
}

//计数 blocks和transactions。

int blocksCount(block *blocks){
    int count=0;
    while(blocks->nextblock!=NULL)
    {
        count++;
        blocks=blocks->nextblock;
    }
    return count;
}

int transactionsCount(block *blocks)
{
    int count=0;
    while(blocks->nextblock!=NULL)
    {
        count+=blocks->transactions.size();
        blocks=blocks->nextblock;
    }
    return count;
}

//计算一个交易所有input引用的output的value值，如果引用非法，返回非法类型。

long long countInput(transaction transactions,block *hd)
{   
    int value=0;
    for(auto &in: transactions.inputs)
    {   int heigt=in.pre_block;
        block *blocks=hd;
        string id=in.prevTxID;
        while(blocks->Height!=heigt&&(blocks->nextblock!=NULL)){//找到preHeight对应区块
            blocks=blocks->nextblock;
        }
		int flag=0;
        for(auto &tr :blocks->transactions)//遍历区块的交易，找到所需要的。
        {
            if(tr.txid==id)
            {flag=1;
                if(tr.legal)
                {   
                    if(!tr.outputs[in.prevTxOutIndex].used){
                    if(in.prevTxOutIndex<tr.output_count)
                    {value+=tr.outputs[in.prevTxOutIndex].value;
					}
                    tr.outputs[in.prevTxOutIndex].used=1;}
                    else if(in.prevTxOutIndex>=tr.output_count){
                        return 0;
                    }
					else{
						return -2;
					}
                }
                else{
                    return -1;
                }
            }
        }
		if(flag==0)
		{
			return 0;
		}
    }
    return value;
}

//计算非法交易数量，同时输出非法交易数据。

int illegal(block *blocks)
{
    int count=0;
    block *head=blocks;
    while(blocks!=NULL)
    { 
        for(auto &transactions :blocks->transactions)
        {
            long long inputValue=0;
            long long outputValue=0;
            if(transactions.is_coinbase)continue;
            inputValue=countInput(transactions,head);
            if(inputValue==-1)//-1 代表引用的交易非法
            {
                transactions.legal=0;
                count++;
                cout<<"id of illegal transactions: "<<transactions.txid<<endl;
                cout<<"Height:"<<blocks->Height<<endl;
				cout<<"reanson is using an illegal output"<<endl;
                continue;
            }
            else if(inputValue==-2)//代表input已经被使用。
            {
                transactions.legal=0;
                count++;
                cout<<"id of illegal transactions: "<<transactions.txid<<endl;
                cout<<"Height:"<<blocks->Height<<endl;
                cout<<"reason is using a used input"<<endl;
                continue;
            }
			else if(inputValue==0)//代表找不到交易
			{
				transactions.legal=0;
                count++;
                cout<<"id of illegal transactions: "<<transactions.txid<<endl;
                cout<<"Height:"<<blocks->Height<<endl;
                cout<<"reason is can't find the input"<<endl;			
			}
            else{
            for(auto output:transactions.outputs)
            {
                outputValue+=output.value;
            }
            if(outputValue>inputValue)
            {
                count++;
                cout<<"id of illegal transactions: "<<transactions.txid<<endl;
                cout<<"Height:"<<blocks->Height<<endl;
				cout<<"reanson is input value less than output value"<<endl;
				cout<<"(output value: "<<outputValue<<">input value: "<<inputValue<<")"<<endl;
                transactions.legal=0;
            }
        }}
        blocks=blocks->nextblock;
    }
    return count;
}  

//查询某个交易对应信息

void showID(block *blocks,string id)
{int flag=0;
while(blocks!=NULL){
    for(auto &t :blocks->transactions)
    {
        if(t.txid==id)
        {   flag=1;
			if(t.is_coinbase)
			cout<<" ||is coinbase||"<<endl;
			if(!t.legal)
			{
				cout<<" ||illegalal transanction!||"<<endl;
			}
            if(!t.is_coinbase){
			cout<<" input:"<<endl;
            for(auto &in:t.inputs){
                cout<<"  prevTxID: "<<in.prevTxID<<endl;
                cout<<"  pre_block: "<<in.pre_block<<endl;
                cout<<"  prev_TxOutIndex: "<<in.prevTxOutIndex<<endl;
            }}
            cout<<" output:"<<endl;
            for(auto &out :t.outputs)
            {
                cout<<"  index:"<<out.index<<' '; 
                cout<<"  value:"<<out.value<<endl;
            }
            return ;
        }
    }

blocks=blocks->nextblock;
}
if(flag==0)
{
	cout<<"no such transaction!"<<endl;
}
}

//查询高度对应的输出。

void showHeight(block *blocks,int height)
{while((blocks!=NULL)&&(blocks->Height!=height))
{
    blocks=blocks->nextblock;
}
if(blocks==NULL)
{
    cout<<"No such Height!"<<endl;
    return ;
}
if(blocks->Height==height)
{
    cout<<" Height:"<<blocks->Height<<endl;
    cout<<" hash: "<<blocks->hash<<endl;
    cout<<" prevHash: "<<blocks->prevHash<<endl;
    int count=0;
    cout<<" transactions` txID:"<<endl;
    for(auto &t:blocks->transactions)
    {   count++;
        cout<<"  "<<t.txid<<endl;
        showID(blocks,t.txid);
    }
    if(count==0)
    {
        cout<<" no such transaction"<<endl;
    }
}
}


int main() {
    block *blocks = new block; 
    block *head = blocks;  
    readBlocks(head);
    readtransaction(head);
    readIn(head);
    readOut(head);
    int transactionsNum=transactionsCount(head);
    cout<<"!!!Block!!!"<<endl;
    printf("Counts of blocks: %d\n",blocksCount(head));
    printf("Counts of transactions: %d\n",transactionsNum);
    int illegalnum=illegal(head);
    printf("Counts of illegal: %d\n",illegalnum);
    printf("Counts of legal:%d\n",transactionsNum-illegalnum);
    int n=0;
	while(1){
    printf("Please enter next option(1:input height,2:input txID,3:quit):\n");
    scanf("%d",&n);
    int t=0;
    string s;
    switch (n)
    {
    case 1:
        printf("Please input height:\n");
        scanf("%d",&t);
        showHeight(head,t);
        break;
    case 2:
		printf("Please input ID:\n");
        cin>>s;
        showID(head,s);
        break;
	case 3:
	return 0;
    default:
    printf("Illegal option,try again\n");
    }
	}
    return 0;
}
