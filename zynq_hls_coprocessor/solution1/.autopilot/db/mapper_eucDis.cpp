#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void eucDis(int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, volatile void *);
extern "C" void apatb_eucDis_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_C) {
  // Collect __xlx_A_0__tmp_vec
  vector<sc_bv<32> >__xlx_A_0__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_0)[j*4+3];
    __xlx_A_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_0 = 128;
  int __xlx_offset_param_A_0 = 0;
  int __xlx_offset_byte_param_A_0 = 0*4;
  int* __xlx_A_0__input_buffer= new int[__xlx_A_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_0__tmp_vec.size(); ++i) {
    __xlx_A_0__input_buffer[i] = __xlx_A_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_1__tmp_vec
  vector<sc_bv<32> >__xlx_A_1__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_1)[j*4+3];
    __xlx_A_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_1 = 128;
  int __xlx_offset_param_A_1 = 0;
  int __xlx_offset_byte_param_A_1 = 0*4;
  int* __xlx_A_1__input_buffer= new int[__xlx_A_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_1__tmp_vec.size(); ++i) {
    __xlx_A_1__input_buffer[i] = __xlx_A_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_2__tmp_vec
  vector<sc_bv<32> >__xlx_A_2__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_2)[j*4+3];
    __xlx_A_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_2 = 128;
  int __xlx_offset_param_A_2 = 0;
  int __xlx_offset_byte_param_A_2 = 0*4;
  int* __xlx_A_2__input_buffer= new int[__xlx_A_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_2__tmp_vec.size(); ++i) {
    __xlx_A_2__input_buffer[i] = __xlx_A_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_3__tmp_vec
  vector<sc_bv<32> >__xlx_A_3__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_3)[j*4+3];
    __xlx_A_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_3 = 128;
  int __xlx_offset_param_A_3 = 0;
  int __xlx_offset_byte_param_A_3 = 0*4;
  int* __xlx_A_3__input_buffer= new int[__xlx_A_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_3__tmp_vec.size(); ++i) {
    __xlx_A_3__input_buffer[i] = __xlx_A_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_4__tmp_vec
  vector<sc_bv<32> >__xlx_A_4__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_4)[j*4+3];
    __xlx_A_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_4 = 128;
  int __xlx_offset_param_A_4 = 0;
  int __xlx_offset_byte_param_A_4 = 0*4;
  int* __xlx_A_4__input_buffer= new int[__xlx_A_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_4__tmp_vec.size(); ++i) {
    __xlx_A_4__input_buffer[i] = __xlx_A_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_5__tmp_vec
  vector<sc_bv<32> >__xlx_A_5__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_5)[j*4+3];
    __xlx_A_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_5 = 128;
  int __xlx_offset_param_A_5 = 0;
  int __xlx_offset_byte_param_A_5 = 0*4;
  int* __xlx_A_5__input_buffer= new int[__xlx_A_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_5__tmp_vec.size(); ++i) {
    __xlx_A_5__input_buffer[i] = __xlx_A_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_6__tmp_vec
  vector<sc_bv<32> >__xlx_A_6__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_6)[j*4+3];
    __xlx_A_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_6 = 128;
  int __xlx_offset_param_A_6 = 0;
  int __xlx_offset_byte_param_A_6 = 0*4;
  int* __xlx_A_6__input_buffer= new int[__xlx_A_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_6__tmp_vec.size(); ++i) {
    __xlx_A_6__input_buffer[i] = __xlx_A_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_7__tmp_vec
  vector<sc_bv<32> >__xlx_A_7__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_7)[j*4+3];
    __xlx_A_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_7 = 128;
  int __xlx_offset_param_A_7 = 0;
  int __xlx_offset_byte_param_A_7 = 0*4;
  int* __xlx_A_7__input_buffer= new int[__xlx_A_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_7__tmp_vec.size(); ++i) {
    __xlx_A_7__input_buffer[i] = __xlx_A_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_0__tmp_vec
  vector<sc_bv<32> >__xlx_B_0__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_0)[j*4+3];
    __xlx_B_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_0 = 128;
  int __xlx_offset_param_B_0 = 0;
  int __xlx_offset_byte_param_B_0 = 0*4;
  int* __xlx_B_0__input_buffer= new int[__xlx_B_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_0__tmp_vec.size(); ++i) {
    __xlx_B_0__input_buffer[i] = __xlx_B_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_1__tmp_vec
  vector<sc_bv<32> >__xlx_B_1__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_1)[j*4+3];
    __xlx_B_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_1 = 128;
  int __xlx_offset_param_B_1 = 0;
  int __xlx_offset_byte_param_B_1 = 0*4;
  int* __xlx_B_1__input_buffer= new int[__xlx_B_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_1__tmp_vec.size(); ++i) {
    __xlx_B_1__input_buffer[i] = __xlx_B_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_2__tmp_vec
  vector<sc_bv<32> >__xlx_B_2__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_2)[j*4+3];
    __xlx_B_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_2 = 128;
  int __xlx_offset_param_B_2 = 0;
  int __xlx_offset_byte_param_B_2 = 0*4;
  int* __xlx_B_2__input_buffer= new int[__xlx_B_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_2__tmp_vec.size(); ++i) {
    __xlx_B_2__input_buffer[i] = __xlx_B_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_3__tmp_vec
  vector<sc_bv<32> >__xlx_B_3__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_3)[j*4+3];
    __xlx_B_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_3 = 128;
  int __xlx_offset_param_B_3 = 0;
  int __xlx_offset_byte_param_B_3 = 0*4;
  int* __xlx_B_3__input_buffer= new int[__xlx_B_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_3__tmp_vec.size(); ++i) {
    __xlx_B_3__input_buffer[i] = __xlx_B_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_4__tmp_vec
  vector<sc_bv<32> >__xlx_B_4__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_4)[j*4+3];
    __xlx_B_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_4 = 128;
  int __xlx_offset_param_B_4 = 0;
  int __xlx_offset_byte_param_B_4 = 0*4;
  int* __xlx_B_4__input_buffer= new int[__xlx_B_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_4__tmp_vec.size(); ++i) {
    __xlx_B_4__input_buffer[i] = __xlx_B_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_5__tmp_vec
  vector<sc_bv<32> >__xlx_B_5__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_5)[j*4+3];
    __xlx_B_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_5 = 128;
  int __xlx_offset_param_B_5 = 0;
  int __xlx_offset_byte_param_B_5 = 0*4;
  int* __xlx_B_5__input_buffer= new int[__xlx_B_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_5__tmp_vec.size(); ++i) {
    __xlx_B_5__input_buffer[i] = __xlx_B_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_6__tmp_vec
  vector<sc_bv<32> >__xlx_B_6__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_6)[j*4+3];
    __xlx_B_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_6 = 128;
  int __xlx_offset_param_B_6 = 0;
  int __xlx_offset_byte_param_B_6 = 0*4;
  int* __xlx_B_6__input_buffer= new int[__xlx_B_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_6__tmp_vec.size(); ++i) {
    __xlx_B_6__input_buffer[i] = __xlx_B_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_7__tmp_vec
  vector<sc_bv<32> >__xlx_B_7__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_7)[j*4+3];
    __xlx_B_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_7 = 128;
  int __xlx_offset_param_B_7 = 0;
  int __xlx_offset_byte_param_B_7 = 0*4;
  int* __xlx_B_7__input_buffer= new int[__xlx_B_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_7__tmp_vec.size(); ++i) {
    __xlx_B_7__input_buffer[i] = __xlx_B_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  eucDis(__xlx_A_0__input_buffer, __xlx_A_1__input_buffer, __xlx_A_2__input_buffer, __xlx_A_3__input_buffer, __xlx_A_4__input_buffer, __xlx_A_5__input_buffer, __xlx_A_6__input_buffer, __xlx_A_7__input_buffer, __xlx_B_0__input_buffer, __xlx_B_1__input_buffer, __xlx_B_2__input_buffer, __xlx_B_3__input_buffer, __xlx_B_4__input_buffer, __xlx_B_5__input_buffer, __xlx_B_6__input_buffer, __xlx_B_7__input_buffer, __xlx_apatb_param_C);
// print __xlx_apatb_param_A_0
  sc_bv<32>*__xlx_A_0_output_buffer = new sc_bv<32>[__xlx_size_param_A_0];
  for (int i = 0; i < __xlx_size_param_A_0; ++i) {
    __xlx_A_0_output_buffer[i] = __xlx_A_0__input_buffer[i+__xlx_offset_param_A_0];
  }
  for (int i = 0; i < __xlx_size_param_A_0; ++i) {
    ((char*)__xlx_apatb_param_A_0)[i*4+0] = __xlx_A_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_0)[i*4+1] = __xlx_A_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_0)[i*4+2] = __xlx_A_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_0)[i*4+3] = __xlx_A_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_1
  sc_bv<32>*__xlx_A_1_output_buffer = new sc_bv<32>[__xlx_size_param_A_1];
  for (int i = 0; i < __xlx_size_param_A_1; ++i) {
    __xlx_A_1_output_buffer[i] = __xlx_A_1__input_buffer[i+__xlx_offset_param_A_1];
  }
  for (int i = 0; i < __xlx_size_param_A_1; ++i) {
    ((char*)__xlx_apatb_param_A_1)[i*4+0] = __xlx_A_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_1)[i*4+1] = __xlx_A_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_1)[i*4+2] = __xlx_A_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_1)[i*4+3] = __xlx_A_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_2
  sc_bv<32>*__xlx_A_2_output_buffer = new sc_bv<32>[__xlx_size_param_A_2];
  for (int i = 0; i < __xlx_size_param_A_2; ++i) {
    __xlx_A_2_output_buffer[i] = __xlx_A_2__input_buffer[i+__xlx_offset_param_A_2];
  }
  for (int i = 0; i < __xlx_size_param_A_2; ++i) {
    ((char*)__xlx_apatb_param_A_2)[i*4+0] = __xlx_A_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_2)[i*4+1] = __xlx_A_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_2)[i*4+2] = __xlx_A_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_2)[i*4+3] = __xlx_A_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_3
  sc_bv<32>*__xlx_A_3_output_buffer = new sc_bv<32>[__xlx_size_param_A_3];
  for (int i = 0; i < __xlx_size_param_A_3; ++i) {
    __xlx_A_3_output_buffer[i] = __xlx_A_3__input_buffer[i+__xlx_offset_param_A_3];
  }
  for (int i = 0; i < __xlx_size_param_A_3; ++i) {
    ((char*)__xlx_apatb_param_A_3)[i*4+0] = __xlx_A_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_3)[i*4+1] = __xlx_A_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_3)[i*4+2] = __xlx_A_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_3)[i*4+3] = __xlx_A_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_4
  sc_bv<32>*__xlx_A_4_output_buffer = new sc_bv<32>[__xlx_size_param_A_4];
  for (int i = 0; i < __xlx_size_param_A_4; ++i) {
    __xlx_A_4_output_buffer[i] = __xlx_A_4__input_buffer[i+__xlx_offset_param_A_4];
  }
  for (int i = 0; i < __xlx_size_param_A_4; ++i) {
    ((char*)__xlx_apatb_param_A_4)[i*4+0] = __xlx_A_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_4)[i*4+1] = __xlx_A_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_4)[i*4+2] = __xlx_A_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_4)[i*4+3] = __xlx_A_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_5
  sc_bv<32>*__xlx_A_5_output_buffer = new sc_bv<32>[__xlx_size_param_A_5];
  for (int i = 0; i < __xlx_size_param_A_5; ++i) {
    __xlx_A_5_output_buffer[i] = __xlx_A_5__input_buffer[i+__xlx_offset_param_A_5];
  }
  for (int i = 0; i < __xlx_size_param_A_5; ++i) {
    ((char*)__xlx_apatb_param_A_5)[i*4+0] = __xlx_A_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_5)[i*4+1] = __xlx_A_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_5)[i*4+2] = __xlx_A_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_5)[i*4+3] = __xlx_A_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_6
  sc_bv<32>*__xlx_A_6_output_buffer = new sc_bv<32>[__xlx_size_param_A_6];
  for (int i = 0; i < __xlx_size_param_A_6; ++i) {
    __xlx_A_6_output_buffer[i] = __xlx_A_6__input_buffer[i+__xlx_offset_param_A_6];
  }
  for (int i = 0; i < __xlx_size_param_A_6; ++i) {
    ((char*)__xlx_apatb_param_A_6)[i*4+0] = __xlx_A_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_6)[i*4+1] = __xlx_A_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_6)[i*4+2] = __xlx_A_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_6)[i*4+3] = __xlx_A_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_7
  sc_bv<32>*__xlx_A_7_output_buffer = new sc_bv<32>[__xlx_size_param_A_7];
  for (int i = 0; i < __xlx_size_param_A_7; ++i) {
    __xlx_A_7_output_buffer[i] = __xlx_A_7__input_buffer[i+__xlx_offset_param_A_7];
  }
  for (int i = 0; i < __xlx_size_param_A_7; ++i) {
    ((char*)__xlx_apatb_param_A_7)[i*4+0] = __xlx_A_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_7)[i*4+1] = __xlx_A_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_7)[i*4+2] = __xlx_A_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_7)[i*4+3] = __xlx_A_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_0
  sc_bv<32>*__xlx_B_0_output_buffer = new sc_bv<32>[__xlx_size_param_B_0];
  for (int i = 0; i < __xlx_size_param_B_0; ++i) {
    __xlx_B_0_output_buffer[i] = __xlx_B_0__input_buffer[i+__xlx_offset_param_B_0];
  }
  for (int i = 0; i < __xlx_size_param_B_0; ++i) {
    ((char*)__xlx_apatb_param_B_0)[i*4+0] = __xlx_B_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_0)[i*4+1] = __xlx_B_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_0)[i*4+2] = __xlx_B_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_0)[i*4+3] = __xlx_B_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_1
  sc_bv<32>*__xlx_B_1_output_buffer = new sc_bv<32>[__xlx_size_param_B_1];
  for (int i = 0; i < __xlx_size_param_B_1; ++i) {
    __xlx_B_1_output_buffer[i] = __xlx_B_1__input_buffer[i+__xlx_offset_param_B_1];
  }
  for (int i = 0; i < __xlx_size_param_B_1; ++i) {
    ((char*)__xlx_apatb_param_B_1)[i*4+0] = __xlx_B_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_1)[i*4+1] = __xlx_B_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_1)[i*4+2] = __xlx_B_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_1)[i*4+3] = __xlx_B_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_2
  sc_bv<32>*__xlx_B_2_output_buffer = new sc_bv<32>[__xlx_size_param_B_2];
  for (int i = 0; i < __xlx_size_param_B_2; ++i) {
    __xlx_B_2_output_buffer[i] = __xlx_B_2__input_buffer[i+__xlx_offset_param_B_2];
  }
  for (int i = 0; i < __xlx_size_param_B_2; ++i) {
    ((char*)__xlx_apatb_param_B_2)[i*4+0] = __xlx_B_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_2)[i*4+1] = __xlx_B_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_2)[i*4+2] = __xlx_B_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_2)[i*4+3] = __xlx_B_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_3
  sc_bv<32>*__xlx_B_3_output_buffer = new sc_bv<32>[__xlx_size_param_B_3];
  for (int i = 0; i < __xlx_size_param_B_3; ++i) {
    __xlx_B_3_output_buffer[i] = __xlx_B_3__input_buffer[i+__xlx_offset_param_B_3];
  }
  for (int i = 0; i < __xlx_size_param_B_3; ++i) {
    ((char*)__xlx_apatb_param_B_3)[i*4+0] = __xlx_B_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_3)[i*4+1] = __xlx_B_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_3)[i*4+2] = __xlx_B_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_3)[i*4+3] = __xlx_B_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_4
  sc_bv<32>*__xlx_B_4_output_buffer = new sc_bv<32>[__xlx_size_param_B_4];
  for (int i = 0; i < __xlx_size_param_B_4; ++i) {
    __xlx_B_4_output_buffer[i] = __xlx_B_4__input_buffer[i+__xlx_offset_param_B_4];
  }
  for (int i = 0; i < __xlx_size_param_B_4; ++i) {
    ((char*)__xlx_apatb_param_B_4)[i*4+0] = __xlx_B_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_4)[i*4+1] = __xlx_B_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_4)[i*4+2] = __xlx_B_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_4)[i*4+3] = __xlx_B_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_5
  sc_bv<32>*__xlx_B_5_output_buffer = new sc_bv<32>[__xlx_size_param_B_5];
  for (int i = 0; i < __xlx_size_param_B_5; ++i) {
    __xlx_B_5_output_buffer[i] = __xlx_B_5__input_buffer[i+__xlx_offset_param_B_5];
  }
  for (int i = 0; i < __xlx_size_param_B_5; ++i) {
    ((char*)__xlx_apatb_param_B_5)[i*4+0] = __xlx_B_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_5)[i*4+1] = __xlx_B_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_5)[i*4+2] = __xlx_B_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_5)[i*4+3] = __xlx_B_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_6
  sc_bv<32>*__xlx_B_6_output_buffer = new sc_bv<32>[__xlx_size_param_B_6];
  for (int i = 0; i < __xlx_size_param_B_6; ++i) {
    __xlx_B_6_output_buffer[i] = __xlx_B_6__input_buffer[i+__xlx_offset_param_B_6];
  }
  for (int i = 0; i < __xlx_size_param_B_6; ++i) {
    ((char*)__xlx_apatb_param_B_6)[i*4+0] = __xlx_B_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_6)[i*4+1] = __xlx_B_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_6)[i*4+2] = __xlx_B_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_6)[i*4+3] = __xlx_B_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_7
  sc_bv<32>*__xlx_B_7_output_buffer = new sc_bv<32>[__xlx_size_param_B_7];
  for (int i = 0; i < __xlx_size_param_B_7; ++i) {
    __xlx_B_7_output_buffer[i] = __xlx_B_7__input_buffer[i+__xlx_offset_param_B_7];
  }
  for (int i = 0; i < __xlx_size_param_B_7; ++i) {
    ((char*)__xlx_apatb_param_B_7)[i*4+0] = __xlx_B_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_7)[i*4+1] = __xlx_B_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_7)[i*4+2] = __xlx_B_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_7)[i*4+3] = __xlx_B_7_output_buffer[i].range(31, 24).to_uint();
  }
}
