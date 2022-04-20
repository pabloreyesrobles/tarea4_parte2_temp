#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_A_0 "../tv/cdatafile/c.eucDis.autotvin_A_0.dat"
#define AUTOTB_TVOUT_A_0 "../tv/cdatafile/c.eucDis.autotvout_A_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_1 "../tv/cdatafile/c.eucDis.autotvin_A_1.dat"
#define AUTOTB_TVOUT_A_1 "../tv/cdatafile/c.eucDis.autotvout_A_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_2 "../tv/cdatafile/c.eucDis.autotvin_A_2.dat"
#define AUTOTB_TVOUT_A_2 "../tv/cdatafile/c.eucDis.autotvout_A_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_3 "../tv/cdatafile/c.eucDis.autotvin_A_3.dat"
#define AUTOTB_TVOUT_A_3 "../tv/cdatafile/c.eucDis.autotvout_A_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_4 "../tv/cdatafile/c.eucDis.autotvin_A_4.dat"
#define AUTOTB_TVOUT_A_4 "../tv/cdatafile/c.eucDis.autotvout_A_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_5 "../tv/cdatafile/c.eucDis.autotvin_A_5.dat"
#define AUTOTB_TVOUT_A_5 "../tv/cdatafile/c.eucDis.autotvout_A_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_6 "../tv/cdatafile/c.eucDis.autotvin_A_6.dat"
#define AUTOTB_TVOUT_A_6 "../tv/cdatafile/c.eucDis.autotvout_A_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_7 "../tv/cdatafile/c.eucDis.autotvin_A_7.dat"
#define AUTOTB_TVOUT_A_7 "../tv/cdatafile/c.eucDis.autotvout_A_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_0 "../tv/cdatafile/c.eucDis.autotvin_B_0.dat"
#define AUTOTB_TVOUT_B_0 "../tv/cdatafile/c.eucDis.autotvout_B_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_1 "../tv/cdatafile/c.eucDis.autotvin_B_1.dat"
#define AUTOTB_TVOUT_B_1 "../tv/cdatafile/c.eucDis.autotvout_B_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_2 "../tv/cdatafile/c.eucDis.autotvin_B_2.dat"
#define AUTOTB_TVOUT_B_2 "../tv/cdatafile/c.eucDis.autotvout_B_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_3 "../tv/cdatafile/c.eucDis.autotvin_B_3.dat"
#define AUTOTB_TVOUT_B_3 "../tv/cdatafile/c.eucDis.autotvout_B_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_4 "../tv/cdatafile/c.eucDis.autotvin_B_4.dat"
#define AUTOTB_TVOUT_B_4 "../tv/cdatafile/c.eucDis.autotvout_B_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_5 "../tv/cdatafile/c.eucDis.autotvin_B_5.dat"
#define AUTOTB_TVOUT_B_5 "../tv/cdatafile/c.eucDis.autotvout_B_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_6 "../tv/cdatafile/c.eucDis.autotvin_B_6.dat"
#define AUTOTB_TVOUT_B_6 "../tv/cdatafile/c.eucDis.autotvout_B_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_7 "../tv/cdatafile/c.eucDis.autotvin_B_7.dat"
#define AUTOTB_TVOUT_B_7 "../tv/cdatafile/c.eucDis.autotvout_B_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_C "../tv/cdatafile/c.eucDis.autotvin_C.dat"
#define AUTOTB_TVOUT_C "../tv/cdatafile/c.eucDis.autotvout_C.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A_0 "../tv/rtldatafile/rtl.eucDis.autotvout_A_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_1 "../tv/rtldatafile/rtl.eucDis.autotvout_A_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_2 "../tv/rtldatafile/rtl.eucDis.autotvout_A_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_3 "../tv/rtldatafile/rtl.eucDis.autotvout_A_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_4 "../tv/rtldatafile/rtl.eucDis.autotvout_A_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_5 "../tv/rtldatafile/rtl.eucDis.autotvout_A_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_6 "../tv/rtldatafile/rtl.eucDis.autotvout_A_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_7 "../tv/rtldatafile/rtl.eucDis.autotvout_A_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_0 "../tv/rtldatafile/rtl.eucDis.autotvout_B_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_1 "../tv/rtldatafile/rtl.eucDis.autotvout_B_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_2 "../tv/rtldatafile/rtl.eucDis.autotvout_B_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_3 "../tv/rtldatafile/rtl.eucDis.autotvout_B_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_4 "../tv/rtldatafile/rtl.eucDis.autotvout_B_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_5 "../tv/rtldatafile/rtl.eucDis.autotvout_B_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_6 "../tv/rtldatafile/rtl.eucDis.autotvout_B_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_7 "../tv/rtldatafile/rtl.eucDis.autotvout_B_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C "../tv/rtldatafile/rtl.eucDis.autotvout_C.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  A_0_depth = 0;
  A_1_depth = 0;
  A_2_depth = 0;
  A_3_depth = 0;
  A_4_depth = 0;
  A_5_depth = 0;
  A_6_depth = 0;
  A_7_depth = 0;
  B_0_depth = 0;
  B_1_depth = 0;
  B_2_depth = 0;
  B_3_depth = 0;
  B_4_depth = 0;
  B_5_depth = 0;
  B_6_depth = 0;
  B_7_depth = 0;
  C_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{A_0 " << A_0_depth << "}\n";
  total_list << "{A_1 " << A_1_depth << "}\n";
  total_list << "{A_2 " << A_2_depth << "}\n";
  total_list << "{A_3 " << A_3_depth << "}\n";
  total_list << "{A_4 " << A_4_depth << "}\n";
  total_list << "{A_5 " << A_5_depth << "}\n";
  total_list << "{A_6 " << A_6_depth << "}\n";
  total_list << "{A_7 " << A_7_depth << "}\n";
  total_list << "{B_0 " << B_0_depth << "}\n";
  total_list << "{B_1 " << B_1_depth << "}\n";
  total_list << "{B_2 " << B_2_depth << "}\n";
  total_list << "{B_3 " << B_3_depth << "}\n";
  total_list << "{B_4 " << B_4_depth << "}\n";
  total_list << "{B_5 " << B_5_depth << "}\n";
  total_list << "{B_6 " << B_6_depth << "}\n";
  total_list << "{B_7 " << B_7_depth << "}\n";
  total_list << "{C " << C_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int A_0_depth;
    int A_1_depth;
    int A_2_depth;
    int A_3_depth;
    int A_4_depth;
    int A_5_depth;
    int A_6_depth;
    int A_7_depth;
    int B_0_depth;
    int B_1_depth;
    int B_2_depth;
    int B_3_depth;
    int B_4_depth;
    int B_5_depth;
    int B_6_depth;
    int B_7_depth;
    int C_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void eucDis_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_eucDis_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_C) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_C);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > C_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "C");
  
            // push token into output port buffer
            if (AESL_token != "") {
              C_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {((char*)__xlx_apatb_param_C)[0*4+0] = C_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_C)[0*4+1] = C_pc_buffer[0].range(15, 8).to_int64();
((char*)__xlx_apatb_param_C)[0*4+2] = C_pc_buffer[0].range(23, 16).to_int64();
((char*)__xlx_apatb_param_C)[0*4+3] = C_pc_buffer[0].range(31, 24).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//A_0
aesl_fh.touch(AUTOTB_TVIN_A_0);
aesl_fh.touch(AUTOTB_TVOUT_A_0);
//A_1
aesl_fh.touch(AUTOTB_TVIN_A_1);
aesl_fh.touch(AUTOTB_TVOUT_A_1);
//A_2
aesl_fh.touch(AUTOTB_TVIN_A_2);
aesl_fh.touch(AUTOTB_TVOUT_A_2);
//A_3
aesl_fh.touch(AUTOTB_TVIN_A_3);
aesl_fh.touch(AUTOTB_TVOUT_A_3);
//A_4
aesl_fh.touch(AUTOTB_TVIN_A_4);
aesl_fh.touch(AUTOTB_TVOUT_A_4);
//A_5
aesl_fh.touch(AUTOTB_TVIN_A_5);
aesl_fh.touch(AUTOTB_TVOUT_A_5);
//A_6
aesl_fh.touch(AUTOTB_TVIN_A_6);
aesl_fh.touch(AUTOTB_TVOUT_A_6);
//A_7
aesl_fh.touch(AUTOTB_TVIN_A_7);
aesl_fh.touch(AUTOTB_TVOUT_A_7);
//B_0
aesl_fh.touch(AUTOTB_TVIN_B_0);
aesl_fh.touch(AUTOTB_TVOUT_B_0);
//B_1
aesl_fh.touch(AUTOTB_TVIN_B_1);
aesl_fh.touch(AUTOTB_TVOUT_B_1);
//B_2
aesl_fh.touch(AUTOTB_TVIN_B_2);
aesl_fh.touch(AUTOTB_TVOUT_B_2);
//B_3
aesl_fh.touch(AUTOTB_TVIN_B_3);
aesl_fh.touch(AUTOTB_TVOUT_B_3);
//B_4
aesl_fh.touch(AUTOTB_TVIN_B_4);
aesl_fh.touch(AUTOTB_TVOUT_B_4);
//B_5
aesl_fh.touch(AUTOTB_TVIN_B_5);
aesl_fh.touch(AUTOTB_TVOUT_B_5);
//B_6
aesl_fh.touch(AUTOTB_TVIN_B_6);
aesl_fh.touch(AUTOTB_TVOUT_B_6);
//B_7
aesl_fh.touch(AUTOTB_TVIN_B_7);
aesl_fh.touch(AUTOTB_TVOUT_B_7);
//C
aesl_fh.touch(AUTOTB_TVIN_C);
aesl_fh.touch(AUTOTB_TVOUT_C);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_A_0 = 0;
// print A_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_0 = 0*4;
  if (__xlx_apatb_param_A_0) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_0)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_0, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_1 = 0;
// print A_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_1 = 0*4;
  if (__xlx_apatb_param_A_1) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_1)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_1, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_2 = 0;
// print A_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_2 = 0*4;
  if (__xlx_apatb_param_A_2) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_2)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_2, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_3 = 0;
// print A_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_3 = 0*4;
  if (__xlx_apatb_param_A_3) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_3)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_3, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_4 = 0;
// print A_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_4 = 0*4;
  if (__xlx_apatb_param_A_4) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_4)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_4, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_5 = 0;
// print A_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_5 = 0*4;
  if (__xlx_apatb_param_A_5) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_5)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_5, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_6 = 0;
// print A_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_6 = 0*4;
  if (__xlx_apatb_param_A_6) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_6)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_6, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_7 = 0;
// print A_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_7 = 0*4;
  if (__xlx_apatb_param_A_7) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A_7)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_7, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.A_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_0 = 0;
// print B_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_0 = 0*4;
  if (__xlx_apatb_param_B_0) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_0)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_0, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_1 = 0;
// print B_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_1 = 0*4;
  if (__xlx_apatb_param_B_1) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_1)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_1, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_2 = 0;
// print B_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_2 = 0*4;
  if (__xlx_apatb_param_B_2) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_2)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_2, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_3 = 0;
// print B_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_3 = 0*4;
  if (__xlx_apatb_param_B_3) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_3)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_3, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_4 = 0;
// print B_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_4 = 0*4;
  if (__xlx_apatb_param_B_4) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_4)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_4, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_5 = 0;
// print B_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_5 = 0*4;
  if (__xlx_apatb_param_B_5) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_5)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_5, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_6 = 0;
// print B_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_6 = 0*4;
  if (__xlx_apatb_param_B_6) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_6)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_6, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_7 = 0;
// print B_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_7 = 0*4;
  if (__xlx_apatb_param_B_7) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_7)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_7, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.B_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_sprintf_buffer.data());
}
// print C Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_C, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_C);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_C, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.C_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_C, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
eucDis_hw_stub_wrapper(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_B_2, __xlx_apatb_param_B_3, __xlx_apatb_param_B_4, __xlx_apatb_param_B_5, __xlx_apatb_param_B_6, __xlx_apatb_param_B_7, __xlx_apatb_param_C);
CodeState = DUMP_OUTPUTS;
// print C Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_C, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_C);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_C, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.C_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_C, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
