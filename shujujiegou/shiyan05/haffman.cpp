#include <bits/stdc++.h>
using namespace std;

struct node
{
    int weight;
    string name;
    struct node *left = nullptr, *right = nullptr;
};
//重写的比较方法
struct CompareNode
{
    bool operator()(const node &lhs, const node &rhs) const
    {
        // 定义比较规则，这里按照 weight 的大小来比较
        return lhs.weight >= rhs.weight;
    }
};
//优先队列用于建立哈夫曼树，map用于编码和解码
priority_queue<struct node, vector<struct node>, CompareNode> q;
map<string, string> code;
//建树
node *buildTree(){
    node *head = new node;
    //反复取出最小的两个节点进行合并，建立哈夫树。
    while (q.size() > 1)
    {
        node *left = new node;
        node *right = new node;
        *left = q.top();
        q.pop();
        *right = q.top();
        q.pop();
        node *new_node = new node;
        new_node->left = left;
        new_node->right = right;
        //中间节点用"##"来跳过
        new_node->name = "##";
        //左右节点加权
        new_node->weight = left->weight + right->weight;
        q.push(*new_node);
    }
    *head = q.top();
    return head;
}
//根据权重得到编码
void getcode(node *Node, string pre_code){
    if (Node == nullptr)
    {
        return;
    }
    if (!(Node->left) && (!(Node->right)))
    {
        code[Node->name] = pre_code;
    }//左子树为0右子树为1。
    getcode(Node->left, pre_code + "1");
    getcode(Node->right, pre_code + "0");
}
//阅读权重文件，每一行格式为：字母:权重。唯一例外是空格用<space>标识。
void read_weight(string path)
{  
    ifstream file(path);
    if(!file.is_open()){
        file.close();
        file.open("weight.txt");
    }
    string s = "";
    string i;
    while (getline(file, i))
    {
        s += i;
        s += ',';
    }
    stringstream ss(s);
    while (getline(ss, i, ','))
    {
        struct node *nodei = new node;
        stringstream s1(i);
        string t;
        getline(s1, t, ':');
        if (t == " " || t == "<space>")
        {
            nodei->name = "<space>";
        }
        else
            nodei->name = t;
        getline(s1, t, ':');
        nodei->weight = stoi(t);
        q.push(*nodei);
    }
    node *head = buildTree();
    cout << "PWL:" << head->weight << endl;
    getcode(head, "");
}
//保存模型
void save_model(string path){
    ofstream file(path,ios::out);
    for(auto &pair :code){
        file<<pair.first<<":"<<pair.second<<endl;
    }
    file.close();
    return ;
}
//加载模型
void load_model(string path){
    ifstream file(path);
    if(!file.is_open()){
        file.close();
        file.open("model.txt");
    }
    string i;
    while(getline(file,i))
    {
        string cha1,cha2;
        stringstream s1(i);
        getline(s1,cha1,':');
        getline(s1,cha2,':');
        code[cha1]=cha2;
    }
    if(code.count("<space>")){
        code[" "]=code["<space>"];
    }
}

void decode(string path,string outpath){
    ifstream file(path);
    if(!file.is_open()){
        file.close();
        file.open("01.txt");
    }
    string s,out;
    getline(file,s);
    int count=1;
    while(s.length()>0){
        string sub;
        sub=s.substr(0,count);
        //cout<<sub<<endl;
        for(auto &pair:code)
        {   
            if(sub==pair.second)
            {
                out+=pair.first;
                //cout<<pair.first;
                s=s.substr(count);
                count=1;
                break;
            }
        }
        count++;
    }
    ofstream outfile(outpath,ios::out);
    if(!outfile.is_open()){
        outfile.close();
        outfile.open("string.txt");
    }
    cout<<out;
    outfile<<out;
    return ;
}

void encode(string path,string outpath){
    ifstream file(path);
    if(!file.is_open()){
        file.close();
        file.open("string.txt");
    }
    string s;
    getline(file,s);
    string out;
    for(int i=0;i<s.length();i++)
    {   
        string p(1,s[i]);
        out+=code[p];
    }
    file.close();
    ofstream outfile(outpath,ios::out);
    if(!outfile.is_open()){
        outfile.close();
        outfile.open("01.txt");
    }
    cout<<out;
    outfile<<out;
    return ;
}

int main()
{
    struct node1;
    cout << "please input mode(c/e/d):" << endl;
    char mode;
    string s;
    mode = getchar();
    getchar();
    //模式选择
    if (mode == 'c')
    {   cout<<"please input the weight file(default: weight.txt)"<<endl;
        string weight;
        cin>>weight;
        read_weight(weight);
        for (const auto &pair : code)
        {
            cout << pair.first << ":" << pair.second << endl;
        }
        save_model("model.txt");
    }
    else if (mode == 'e')
    {   string model,input,output;
        cout<<"please input the model file(defualt:model.txt)"<<endl;
        cin>>model;
        load_model(model);
        cout<<"please input the string file(defualt:string.txt)"<<endl;
        cin>>input;
        cout<<"please input the output file path(defualt:01.txt)"<<endl;
        cin>>output;
        cout<<"the result of decoding:"<<endl;
        encode(input,output);
    }
    else
    {   string model,input,output;
        cout<<"please input the model file(defualt:model.txt)"<<endl;
        cin>>model;
        load_model(model);
        cout<<"please input the string file(defualt:01.txt)"<<endl;
        cin>>input;
        cout<<"please input the output file path(defualt:string.txt)"<<endl;
        cin>>output;
        cout<<"the result of encoding:"<<endl;
        decode(input,output);
    }
    return 0;
}
