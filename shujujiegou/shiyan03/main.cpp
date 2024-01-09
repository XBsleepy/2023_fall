#include<iostream>
#include"rsa.h"
using std::cout;
using std::endl;
using std::cin;
int main()
{

    std::hash<std::string> h;
    string str0 = "20221009";
    size_t n0 = h(str0);
    string str_h= std::to_string(n0);
    cout<<"HASH of "<<str0<<" is: "<<str_h<<endl;
    Rsa rsa1,rsa2;
    BigInt c,m,s,pr;
    int pu=1;

    int n=128;
    rsa1.init(n/2);

    cout << "请输入公钥: " << endl;
    cin >> pu ;
    rsa1.setPu(pu);
    pr=rsa1.showPr();
    cout << "私钥为: " << pr << endl;
    // rsa1.showPQ(p,q);
    // cout << "pq为: " << '(' << p << ',' << q << ')' << endl;

    cout<<"使用私钥签名并验证"<<endl;
    sign(rsa1,s, std::to_string(pu));// 这里的第三个参数是被签名的字符串
    verify(rsa1, s, std::to_string(pu));


    cout<<"对已知公钥对应的签名进行验证"<<endl;
    rsa2.init(n/2);
    rsa2.setPu(pu);

    BigInt ss("22308B989987AEE01DED1BAC4C84497F");

    bool flag = verify(rsa2, ss, std::to_string(pu));
    cout<<"result of verification:"<<flag<<endl;


    BigInt encryptMSG = rsa2.encryptByPr(ss);
    cout<<"对明文("<<ss<<") 用公钥加密的结果为:"<<encryptMSG<<endl;

    BigInt decodeMSG = rsa2.decodeByPu(encryptMSG);

    cout<<"对密文("<<encryptMSG<<")用私钥解密的结果为:"<<decodeMSG<<endl;



    return 0;

}

