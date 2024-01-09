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

    cout << "�����빫Կ: " << endl;
    cin >> pu ;
    rsa1.setPu(pu);
    pr=rsa1.showPr();
    cout << "˽ԿΪ: " << pr << endl;
    // rsa1.showPQ(p,q);
    // cout << "pqΪ: " << '(' << p << ',' << q << ')' << endl;

    cout<<"ʹ��˽Կǩ������֤"<<endl;
    sign(rsa1,s, std::to_string(pu));// ����ĵ����������Ǳ�ǩ�����ַ���
    verify(rsa1, s, std::to_string(pu));


    cout<<"����֪��Կ��Ӧ��ǩ��������֤"<<endl;
    rsa2.init(n/2);
    rsa2.setPu(pu);

    BigInt ss("22308B989987AEE01DED1BAC4C84497F");

    bool flag = verify(rsa2, ss, std::to_string(pu));
    cout<<"result of verification:"<<flag<<endl;


    BigInt encryptMSG = rsa2.encryptByPr(ss);
    cout<<"������("<<ss<<") �ù�Կ���ܵĽ��Ϊ:"<<encryptMSG<<endl;

    BigInt decodeMSG = rsa2.decodeByPu(encryptMSG);

    cout<<"������("<<encryptMSG<<")��˽Կ���ܵĽ��Ϊ:"<<decodeMSG<<endl;



    return 0;

}

