#pragma once
#include<sstream>
#include<vector>
#include<string>
#include<cassert>
#include<iostream>
#include<algorithm>
#include<time.h>
#include<functional>
using std::ostream;
using std::vector;
using std::string;

class BigInt{

public:
    typedef unsigned long base_t;
    static int base_char;
    static unsigned int base;
    static int basebitnum;
    static int basebitchar;
    static int basebit;
private:
    friend class Rsa;
    friend void test();
public:
    friend BigInt operator + (const BigInt& a,const BigInt& b);
    friend BigInt operator - (const BigInt& a,const BigInt& b);
    friend BigInt operator * (const BigInt& a,const BigInt& b);
    friend BigInt operator / (const BigInt& a,const BigInt& b);
    friend BigInt operator % (const BigInt& a,const BigInt& b);
    friend bool operator < (const BigInt& a,const BigInt& b);
    friend bool operator <= (const BigInt& a,const BigInt& b);
    friend bool operator == (const BigInt& a,const BigInt& b);
    friend bool operator != (const BigInt& a,const BigInt& b){return !(a==b);}
    //���ذ汾
    friend BigInt operator + (const BigInt& a,const long b){BigInt t(b);return a+t;}
    friend BigInt operator - (const BigInt& a,const long b){BigInt t(b);return a-t;}
    friend BigInt operator * (const BigInt& a,const long b){BigInt t(b);return a*t;}
    friend BigInt operator / (const BigInt& a,const long b){BigInt t(b);return a/t;}
    friend BigInt operator % (const BigInt& a,const long b){BigInt t(b);return a%t;}
    friend bool operator < (const BigInt& a,const long b){BigInt t(b);return a<t;}
    friend bool operator <= (const BigInt& a,const  long b){BigInt t(b);return a<=t;}
    friend bool operator == (const BigInt& a,const long b){BigInt t(b);return a==t;}
    friend bool operator != (const BigInt& a,const long b){BigInt t(b);return !(a==t);};
    //
    friend ostream& operator << (ostream& out,const BigInt& a);
    friend BigInt operator <<(const BigInt& a,unsigned int n);
public:

    //convert to string
    std::string to_string(){
        static char hex[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
        std::string str;
        if(this->_isnegative)
            str+="-";
        BigInt::base_t T=0x0F;

        for(BigInt::data_t::const_iterator it=this->_data.begin();it!=this->_data.end();++it)
        {
            BigInt::base_t ch=(*it);
            for(int j=0;j<BigInt::base_char;++j)
            {
                str.push_back(hex[ch&(T)]);
                ch=ch>>4;
            }
        }
        reverse(str.begin(),str.end());
        return str;
    }

    typedef vector<base_t> data_t;

    typedef const vector<base_t> const_data_t;
    BigInt& trim()
    {
        int count=0;
        //��鲻Ϊ0��Ԫ�ص�����
        for(data_t::reverse_iterator it=_data.rbegin();it!=_data.rend();++it)
            if((*it)==0)
                ++count;
            else
                break;
        if(count==_data.size())//ֻ������������
            --count;
        for(int i=0;i<count;++i)
            _data.pop_back();
        return *this;
    }
    friend class bit;
    class bit
    {
    public:
        std::size_t size();
        bool at(std::size_t i);
        bit(const BigInt& a);
    private:
        vector<base_t> _bitvec;
        std::size_t _size;
    };
    //������ģ����
    BigInt moden(const BigInt& exp,const BigInt& p)const;
    /* ����չ��ŷ������㷨��˷���Ԫ */
    BigInt extendEuclid(const BigInt& m);
public:
    BigInt():_isnegative(false){_data.push_back(0);}

    BigInt(const string& num):_data(),_isnegative(false){copyFromHexString(num);trim();}

    BigInt(const long n):_isnegative(false){copyFromLong(n);}

    BigInt(const_data_t data):_data(data),_isnegative(false){trim();}

    BigInt& operator =(string s)
    {
        _data.clear();
        _isnegative=false;
        copyFromHexString(s);
        trim();
        return *this;
    }
    BigInt(const BigInt& a,bool isnegative):_data(a._data),_isnegative(isnegative){}
    BigInt& operator =(const long n)
    {
        _data.clear();
        copyFromLong(n);
        return *this;
    }
public:
    static BigInt Zero;
    static BigInt One;
    static BigInt Two;
private:
    bool smallThan(const BigInt& a)const;//�жϾ���ֵ�Ƿ�С��
    bool smallOrEquals(const BigInt& a)const;//�жϾ���ֵ�Ƿ�С�����
    bool equals(const BigInt& a)const;//�жϾ���ֵ�Ƿ����

    BigInt& leftShift(const unsigned int n);
    BigInt& rightShift(const unsigned int n);
    BigInt& add(const BigInt& b);

    BigInt& sub(const BigInt& b);

    void copyFromHexString(const string& s)
    {
        string str(s);
        if(str.length() && str.at(0)=='-')
        {
            if(str.length()>1)
                _isnegative=true;
            str=str.substr(1);
        }
        int count=(8-(str.length()%8))%8;
        std::string temp;

        for(int i=0;i<count;++i)
            temp.push_back(0);

        str=temp+str;

        for(int i=0;i<str.length();i+=BigInt::base_char)
        {
            base_t sum=0;
            for(int j=0;j<base_char;++j)
            {
                char ch=str[i+j];

                ch=hex2Uchar(ch);
                sum=((sum<<4)|(ch));
            }
            _data.push_back(sum);
        }
        reverse(_data.begin(),_data.end());
    }
    char hex2Uchar(char ch)
    {
        static char table[]={0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f};
        if(isdigit(ch))
            ch-='0';
        else if(islower(ch))
            ch-='a'-10;
        else if(isupper(ch))
            ch-='A'-10;

        return table[ch];
    }

    void copyFromLong(const long long n)
    {
        long long a=n;
        if(a<0)
        {
            _isnegative=true;
            a=-a;
        }
        do
        {
            BigInt::base_t ch=(a&(BigInt::base));
            _data.push_back(ch);
            a >>= 32;
            //a>>=BigInt::basebitnum;
        }while(a);
    }
    static void div(const BigInt& a,const BigInt& b,BigInt& result,BigInt& ca);
private:
    vector<base_t> _data;
    //���ݴ洢
    bool _isnegative;
};

int BigInt::base_char=8;
unsigned int BigInt::base=0xffffffff;
int BigInt::basebit=5;//2^5
int BigInt::basebitchar=0x1F;
int BigInt::basebitnum=32;
BigInt BigInt::Zero(0);
BigInt BigInt::One(1);
BigInt BigInt::Two(2);

BigInt operator + (const BigInt& a,const BigInt& b)
{
    BigInt ca(a);
    return ca.add(b);
}

BigInt operator - (const BigInt& a,const BigInt& b)
{
    BigInt ca(a);
    return ca.sub(b);
}

BigInt operator * (const BigInt& a,const BigInt& b)
{
    if(a==(BigInt::Zero) || b==(BigInt::Zero))
        return BigInt::Zero;

    const BigInt &big=a._data.size()>b._data.size()?a:b;
    const BigInt &small=(&big)==(&a)?b:a;

    BigInt result(0);

    BigInt::bit bt(small);
    for(int i=bt.size()-1;i>=0;--i)
    {
        if(bt.at(i))
        {
            BigInt temp(big,false);
            temp.leftShift(i);
            //std::cout<<"tmp:"<<temp<<std::endl;
            result.add(temp);
            //std::cout<<"res:"<<result<<std::endl;
        }
    }
    result._isnegative=!(a._isnegative==b._isnegative);
    return result;
}

BigInt operator / (const BigInt& a,const BigInt& b)
{
    assert(b!=(BigInt::Zero));
    if(a.equals(b))//����ֵ���
        return (a._isnegative==b._isnegative)?BigInt(1):BigInt(-1);
    else if(a.smallThan(b))//����ֵС��
        return BigInt::Zero;
    else
    {
        BigInt result,ca;
        BigInt::div(a,b,result,ca);
        return result;
    }
}

BigInt operator % (const BigInt& a,const BigInt& b)
{
    assert(b!=(BigInt::Zero));
    if(a.equals(b))
        return BigInt::Zero;
    else if(a.smallThan(b))
        return a;
    else
    {
        BigInt result,ca;
        BigInt::div(a,b,result,ca);
        return ca;
    }
}

void BigInt::div(const BigInt& a,const BigInt& b,BigInt& result,BigInt& ca)
{
    //1.����a,b
    BigInt cb(b,false);
    ca._isnegative=false;
    ca._data=a._data;

    BigInt::bit bit_b(cb);
    //λ������
    while(true)//����ֵС��
    {
        BigInt::bit bit_a(ca);
        int len=bit_a.size()-bit_b.size();
        BigInt temp;
        //�ҵ���λ��
        while(len>=0)
        {
            temp=cb<<len;
            if(temp.smallOrEquals(ca))
                break;
            --len;
        }
        if(len<0)
            break;
        BigInt::base_t n=0;
        while(temp.smallOrEquals(ca))
        {
            ca.sub(temp);
            ++n;
        }
        BigInt kk(n);
        if(len)
            kk.leftShift(len);
        result.add(kk);
    }
    result.trim();
}

bool operator < (const BigInt& a,const BigInt& b)
{
    if(a._isnegative==b._isnegative)
    {
        if(a._isnegative==false)
            return a.smallThan(b);
        else
            return !(a.smallOrEquals(b));
    }
    else
    {
        if(a._isnegative==false)
            return true;
        else
            return false;
    }
}

bool operator <= (const BigInt& a,const BigInt& b)
{
    if(a._isnegative==b._isnegative)
    {//ͬ��
        if(a._isnegative==false)
            return a.smallOrEquals(b);
        else
            return !(a.smallThan(b));
    }
    else//���
    {
        if(a._isnegative==false)
            return true;
        else
            return false;
    }
}

bool operator == (const BigInt& a,const BigInt& b)
{
    return a._data==b._data && a._isnegative == b._isnegative;
}

ostream& operator << (ostream& out,const BigInt& a)
{
    static char hex[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
    if(a._isnegative)
        out<<"-";
    BigInt::base_t T=0x0F;
    std::string str;
    for(BigInt::data_t::const_iterator it=a._data.begin();it!=a._data.end();++it)
    {
        BigInt::base_t ch=(*it);
        for(int j=0;j<BigInt::base_char;++j)
        {
            str.push_back(hex[ch&(T)]);
            ch=ch>>4;
        }
    }
    reverse(str.begin(),str.end());
    out<<str;
    return out;
}

BigInt operator <<(const BigInt& a,unsigned int n)
{
    BigInt ca(a);
    return ca.leftShift(n);
}

BigInt& BigInt::leftShift(const unsigned int n)
{
    int k=n>>(BigInt::basebit);//5
    int off=n&(BigInt::basebitchar);//0xFF

    int inc=(off==0)?k:1+k;
    for(int i=0;i<inc;++i)
        _data.push_back(0);

    if(k)
    {
        inc=(off==0)?1:2;
        for(int i=_data.size()-inc;i>=k;--i)
            _data[i]=_data[i-k];
        for(int i=0;i<k;++i)
            _data[i]=0;
    }

    if(off)
    {
        BigInt::base_t T=BigInt::base;//0xffffffff
        T=T<<(BigInt::basebitnum-off);//32
        //����
        BigInt::base_t ch=0;
        for(std::size_t i=0;i<_data.size();++i)
        {
            BigInt::base_t t=_data[i];
            _data[i]=(t<<off)|ch;
            ch=(t&T)>>(BigInt::basebitnum-off);//32,���λ
        }
    }
    trim();
    return *this;
}

BigInt& BigInt::rightShift(const unsigned int n)
{
    int k=n>>(BigInt::basebit);//5
    int off=n&(BigInt::basebitchar);//0xFF

    if(k)
    {
        for(int i=0;i>k;++i)
            _data[i]=_data[i+k];
        for(int i=0;i<k;++i)
            _data.pop_back();
        if(_data.size()==0)
            _data.push_back(0);
    }

    if(off)
    {
        BigInt::base_t T=BigInt::base;//0xFFFFFFFF
        T=T>>(BigInt::basebitnum-off);//32
        //����
        BigInt::base_t ch=0;
        for(int i=_data.size()-1;i>=0;--i)
        {
            BigInt::base_t t=_data[i];
            _data[i]=(t>>off)|ch;
            ch=(t&T)<<(BigInt::basebitnum-off);//32,���λ
        }
    }
    trim();
    return *this;
}

BigInt& BigInt::sub(const BigInt& b)
{
    if(b._isnegative==_isnegative)
    {//ͬ��

        BigInt::data_t &res=_data;
        if(!(smallThan(b)))//����ֵ����b
        {
            int cn=0;//��λ
            //������С��
            for(std::size_t i=0;i<b._data.size();++i)
            {
                BigInt::base_t temp=res[i];
                res[i]=(res[i]-b._data[i]-cn);
                cn=temp<res[i]?1:temp<b._data[i]?1:0;
            }

            for(std::size_t i=b._data.size();i<_data.size() && cn!=0;++i)
            {
                BigInt::base_t temp=res[i];
                res[i]=res[i]-cn;
                cn=temp<cn;
            }
            trim();
        }
        else//����ֵС��b
        {
            _data=(b-(*this))._data;
            _isnegative=!_isnegative;
        }
    }
    else
    {//��ŵ����
        bool isnegative=_isnegative;
        _isnegative=b._isnegative;
        add(b);
        _isnegative=isnegative;
    }
    return *this;
}

BigInt& BigInt::add(const BigInt& b)
{
    if(_isnegative==b._isnegative)
    {//ͬ��
        //����
        BigInt::data_t &res=_data;
        int len=b._data.size()-_data.size();

        while((len--)>0)//��λ��0
            res.push_back(0);

        int cn=0;//��λ
        for(std::size_t i=0;i<b._data.size();++i)
        {
            BigInt::base_t temp=res[i];
            res[i]=res[i]+b._data[i]+cn;
            cn=temp>res[i]?1:temp>(temp+b._data[i])?1:0;//0xFFFFFFFF
        }

        for(std::size_t i=b._data.size();i<_data.size() && cn!=0;++i)
        {
            BigInt::base_t temp=res[i];
            res[i]=(res[i]+cn);
            cn=temp>res[i];
        }

        if(cn!=0)
            res.push_back(cn);

        trim();
    }
    else
    {//��ŵ����
        bool isnegative;
        if(smallThan(b))//����ֵС��b
            isnegative=b._isnegative;
        else if(equals(b))//����ֵ����b
            isnegative=false;
        else//����ֵ����b
            isnegative=_isnegative;

        _isnegative=b._isnegative;
        sub(b);
        _isnegative=isnegative;
    }
    return *this;
}

BigInt BigInt::moden(const BigInt& exp,const BigInt& p)const
{//ģ������
    BigInt::bit t(exp);

    BigInt d(1);
    for(int i=t.size()-1;i>=0;--i)
    {
        d=(d*d)%p;
        if(t.at(i))
            d=(d*(*this))%p;
    }
    return d;
}

BigInt BigInt::extendEuclid(const BigInt& m)
{//��չŷ������㷨��˷���Ԫ
    assert(m._isnegative==false);//mΪ����
    BigInt a[3],b[3],t[3];
    a[0] = 1; a[1] = 0; a[2] = m;
    b[0] = 0; b[1] = 1; b[2] = *this;
    if (b[2] == BigInt::Zero || b[2]==BigInt::One)
        return b[2];

    while(true)

    {
        if (b[2] == BigInt::One)
        {
            if(b[1]._isnegative==true)//����
                b[1]=(b[1]%m+m)%m;
            return b[1];
        }

        BigInt q = a[2]/b[2];
        for(int i=0; i<3;++i)
        {
            t[i] = a[i] - q * b[i];
            a[i] = b[i];
            b[i] = t[i];
        }
    }
}

std::size_t BigInt::bit::size()
{
    return _size;
}

bool BigInt::bit::at(std::size_t i)
{
    std::size_t index=i>>(BigInt::basebit);
    std::size_t off=i&(BigInt::basebitchar);
    BigInt::base_t t=_bitvec[index];
    return (t&(1<<off));
}

BigInt::bit::bit(const BigInt& ba)
{
    _bitvec=ba._data;
    BigInt::base_t a=_bitvec[_bitvec.size()-1];//���λ
    _size=_bitvec.size()<<(BigInt::basebit);
    BigInt::base_t t=1<<(BigInt::basebitnum-1);

    if(a==0)
        _size-=(BigInt::basebitnum);
    else
    {
        while(!(a&t))
        {
            --_size;
            t=t>>1;
        }
    }
}

bool BigInt::smallThan(const BigInt& b)const
{
    if(_data.size()==b._data.size())
    {
        for(BigInt::data_t::const_reverse_iterator it=_data.rbegin(),it_b=b._data.rbegin();
            it!=_data.rend();++it,++it_b)
            if((*it)!=(*it_b))
                return (*it)<(*it_b);
        return false;//���
    }
    else
        return _data.size()<b._data.size();
}

bool BigInt::smallOrEquals(const BigInt& b)const
{
    if(_data.size()==b._data.size())
    {
        for(BigInt::data_t::const_reverse_iterator it=_data.rbegin(),it_b=b._data.rbegin();
            it!=_data.rend();++it,++it_b)
            if((*it)!=(*it_b))
                return (*it)<(*it_b);
        return true;//���
    }
    else
        return _data.size()<b._data.size();
}

bool BigInt::equals(const BigInt& a)const
{
    return _data==a._data;
}

class Rsa
{
public:
	Rsa();
	~Rsa();
	void init(unsigned int n);//��ʼ����������˽Կ��

	friend void test();
    void test_n();
public:
    void setPu(unsigned int pu);//���ù�Կ
    void setPr(BigInt pr);//����˽Կ
    void setPQ(BigInt p, BigInt q);// ����p,q
    BigInt showPr();//����˽Կ
    void showPQ(BigInt &p, BigInt &q);// ����p,q

	BigInt encryptByPu(const BigInt& m);//˽Կ����
	BigInt decodeByPr(const BigInt& c);//��Կ����

	BigInt encryptByPr(const BigInt& m);//��Կ����
	BigInt decodeByPu(const BigInt& m);//˽Կ����
private:
	BigInt createOddNum(unsigned int n);//���ɳ���Ϊn������
	bool isPrime(const BigInt& a,const unsigned int k);//�ж�����
	BigInt createPrime(unsigned int n,int it_cout);//���ɳ���Ϊn������
	void createExp(const BigInt& ou);//��һ��ŷ���������ɹ�Կ��˽Կָ��
	BigInt createRandomSmallThan(const BigInt& a);//����С��
	friend ostream& operator <<(ostream& out,const Rsa& rsa)//���
	{
		out<<"N:"<<rsa.N<<"\n";
		out<<"p:"<<rsa._p<<"\n";
		out<<"q:"<<rsa._q<<"\n";
		out<<"e:"<<rsa.e<<"\n";
		out<<"d:"<<rsa._d;
		return out;
	}
public:
	BigInt e,N;//��Կ
private:
	BigInt _d;//˽Կ
	BigInt _p,_q;//
	BigInt _ol;//ŷ����
};

using std::cout;
using std::endl;
using std::ostringstream;

Rsa::Rsa()
{
}

Rsa::~Rsa()
{
}

void Rsa::init(unsigned int n)
{
    srand(time(NULL));
    //����������p��q
    //_p=createPrime(n,10);
    //_q=createPrime(n,10);
    //fix p and q
    _p = BigInt("4B1D6F476484B273");
    _q = BigInt("7A986991B77B3E01");

    //����N
    N=_p*_q;
    //�����ŷ����
    _ol=(_p-1)*(_q-1);
    //����ָ��e
    //createExp(_ol);
    //d
    //cout << "NΪ: " << N << endl;
}

void Rsa::setPu(unsigned int pu)
{//���ù�Կ
    e=pu;
    createExp(_ol);
}

void Rsa::setPr(BigInt pr)
{//����˽Կ
    _d = pr;
}

BigInt Rsa::showPr()
{//����˽Կ
    return _d;
}

void Rsa::setPQ(BigInt p, BigInt q)
{
    _p = p;
    _q = q;
    N=_p*_q;
    _ol=(_p-1)*(_q-1);
    //cout << "NΪ: " << N << endl;
}

void Rsa::showPQ(BigInt &p, BigInt &q)
{
    p = _p;
    q = _q;
    // cout << "pqΪ: " << '(' << _p << ',' << _q << ')' << endl;
}

void Rsa::test_n()
{
    // ˽ԿΪ"38D30B566C15FC19531E5FF12D041A4B"
    // ǩ��Ϊ"49761920E8549696D821CE2C8F5AAE2C"
    BigInt text("20221007");
    // BigInt dd("49761920E8549696D821CE2C8F5AAE2C");
    BigInt ci("49761920E8549696D821CE2C8F5AAE2C");
    // BigInt ci = text.moden(dd,N);
    // cout << "ci:" << ci << endl ;
    BigInt text_n = ci.moden(e,N);
    cout << text_n << endl;
}

BigInt Rsa::createOddNum(unsigned int n)
{//���ɳ���Ϊn������
    n=n/4;
    static unsigned char hex_table[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
    if(n)
    {
        ostringstream oss;
        for(std::size_t i=0;i<n-1;++i)
            oss<<hex_table[rand()%16];
        oss<<hex_table[1];
        string str(oss.str());
        return BigInt(str);
    }
    else
        return BigInt::Zero;
}

bool Rsa::isPrime(const BigInt& n,const unsigned int k)
{//�ж�����
    assert(n!=BigInt::Zero);
    if(n==BigInt::Two)
        return true;

    BigInt n_1=n-1;
    BigInt::bit b(n_1);//������λ
    if(b.at(0)==1)
        return false;

    for(std::size_t t=0;t<k;++t)
    {
        BigInt a=createRandomSmallThan(n_1);//�����
        BigInt d(BigInt::One);
        for(int i=b.size()-1;i>=0;--i)
        {
            BigInt x=d;
            d=(d*d)%n;
            if(d==BigInt::One && x!=BigInt::One && x!=n_1)
                return false;

            if(b.at(i))
            {
                assert(d!=BigInt::Zero);
                d=(a*d)%n;
            }
        }
        if(d!=BigInt::One)
            return false;
    }
    return true;
}

BigInt Rsa::createRandomSmallThan(const BigInt& a)
{
    unsigned long t=0;
    do
    {
        t=rand();
    }while(t==0);

    BigInt mod(t);
    BigInt r=mod%a;
    if(r==BigInt::Zero)
        r=a-BigInt::One;
    return r;
}

BigInt Rsa::createPrime(unsigned int n,int it_count)
{//���ɳ���Ϊn������
    assert(it_count>0);
    BigInt res=createOddNum(n);
    while(!isPrime(res,it_count))
    {
        res.add(BigInt::Two);
    }
    return res;
}

void Rsa::createExp(const BigInt& ou)
{//��һ��ŷ���������ɹ�Կ��˽Կָ��
    //e=5;
    //e=65537;
    _d=e.extendEuclid(ou);
}

BigInt Rsa::encryptByPu(const BigInt& m)
{//��Կ����
    return m.moden(e,N);
}

BigInt Rsa::decodeByPr(const BigInt& c)
{//˽Կ����
    return c.moden(_d,N);
}

BigInt Rsa::encryptByPr(const BigInt& m)
{//˽Կ����
    return decodeByPr(m);
}

BigInt Rsa::decodeByPu(const BigInt& c)
{//��Կ����
    return encryptByPu(c);
}

bool islegal(const string& str)
{//�ж������Ƿ�Ϸ�
    for(string::const_iterator it=str.begin();it!=str.end();++it)
        if(!isalnum(*it))//������ĸ����
            return false;
    return true;
}

bool decode(Rsa& rsa,BigInt& c)
{//����

    long t1=clock();
    BigInt m=rsa.decodeByPr(c);
    long t2=clock();
    cout<<"��ʱ:"<<(t2-t1)<<"ms."<<endl;

    cout<<"����:"<<c<<endl
        <<"����:"<<m<<endl;
    return true;
}

bool encry(Rsa& rsa,BigInt& c,string str)
{
    if(!islegal(str))
        return false;
    BigInt m(str);

    c=rsa.encryptByPu(m);

    cout<< "���ģ�"<<m<<endl
        <<"����:"<<c<<endl;

    return true;
}

bool sign(Rsa& rsa,BigInt& s,string str)
{
    if(!islegal(str))
        return false;

    std::hash<std::string> h;
    size_t n = h(str);
    string str_h= std::to_string(n);
    BigInt m(str_h);

    s=rsa.encryptByPr(m);

    cout<< "���ģ�"<<str<<endl
        <<"ǩ��:"<<s<<endl;
    return true;

}

bool verify(Rsa& rsa,BigInt& s,string str)
{
    if(!islegal(str))
        return false;

    std::hash<std::string> h;
    size_t n = h(str);
    string str_h= std::to_string(n);
    //BigInt m(str_h);

    BigInt m=rsa.decodeByPu(s);

    //ȥ��ǰ��������0
    std::string m_str = m.to_string();
    int counter = 0;
    for(int i=0;i<m_str.size();i++){
        if (m_str[i]=='0')
            counter++;
        else
            break;

    }

    m_str = m_str.substr(counter);

    return (str_h == m_str);
}

bool verifyByGivenPr(Rsa& rsa,BigInt& s,BigInt pr ,string str)
{
    rsa.setPr(pr);
    rsa.showPr();
    return verify(rsa,s,str);
}

bool RSATest(Rsa& rsa)
{
    BigInt text("1F2C");
    // BigInt ci = rsa.decodeByPr(text);
    BigInt ci("3FD06C413CA0D303DAAFBF61D7CC9902");
    BigInt text_new = rsa.encryptByPu(ci);
    cout << rsa.e << endl ;
    cout << text_new << endl;
    return text == text_new;
}
