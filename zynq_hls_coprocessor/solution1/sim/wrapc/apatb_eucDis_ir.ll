; ModuleID = 'E:/Magisterio/IPD-432/Tarea_4/zynq_hls_coprocessor/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_eucDis_ir(i32* %A, i32* %B, i32* %C) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 512)
  %malloccall_1 = call i8* @malloc(i64 512)
  %malloccall_2 = call i8* @malloc(i64 512)
  %malloccall_3 = call i8* @malloc(i64 512)
  %malloccall_4 = call i8* @malloc(i64 512)
  %malloccall_5 = call i8* @malloc(i64 512)
  %malloccall_6 = call i8* @malloc(i64 512)
  %malloccall_7 = call i8* @malloc(i64 512)
  %A_copy_0 = bitcast i8* %malloccall_0 to [128 x i32]*
  %A_copy_1 = bitcast i8* %malloccall_1 to [128 x i32]*
  %A_copy_2 = bitcast i8* %malloccall_2 to [128 x i32]*
  %A_copy_3 = bitcast i8* %malloccall_3 to [128 x i32]*
  %A_copy_4 = bitcast i8* %malloccall_4 to [128 x i32]*
  %A_copy_5 = bitcast i8* %malloccall_5 to [128 x i32]*
  %A_copy_6 = bitcast i8* %malloccall_6 to [128 x i32]*
  %A_copy_7 = bitcast i8* %malloccall_7 to [128 x i32]*
  %malloccall1_0 = call i8* @malloc(i64 512)
  %malloccall1_1 = call i8* @malloc(i64 512)
  %malloccall1_2 = call i8* @malloc(i64 512)
  %malloccall1_3 = call i8* @malloc(i64 512)
  %malloccall1_4 = call i8* @malloc(i64 512)
  %malloccall1_5 = call i8* @malloc(i64 512)
  %malloccall1_6 = call i8* @malloc(i64 512)
  %malloccall1_7 = call i8* @malloc(i64 512)
  %B_copy_0 = bitcast i8* %malloccall1_0 to [128 x i32]*
  %B_copy_1 = bitcast i8* %malloccall1_1 to [128 x i32]*
  %B_copy_2 = bitcast i8* %malloccall1_2 to [128 x i32]*
  %B_copy_3 = bitcast i8* %malloccall1_3 to [128 x i32]*
  %B_copy_4 = bitcast i8* %malloccall1_4 to [128 x i32]*
  %B_copy_5 = bitcast i8* %malloccall1_5 to [128 x i32]*
  %B_copy_6 = bitcast i8* %malloccall1_6 to [128 x i32]*
  %B_copy_7 = bitcast i8* %malloccall1_7 to [128 x i32]*
  %C_copy = alloca i32, align 512
  %0 = bitcast i32* %A to [1024 x i32]*
  %1 = bitcast i32* %B to [1024 x i32]*
  call void @copy_in([1024 x i32]* %0, [128 x i32]* %A_copy_0, [128 x i32]* %A_copy_1, [128 x i32]* %A_copy_2, [128 x i32]* %A_copy_3, [128 x i32]* %A_copy_4, [128 x i32]* %A_copy_5, [128 x i32]* %A_copy_6, [128 x i32]* %A_copy_7, [1024 x i32]* %1, [128 x i32]* %B_copy_0, [128 x i32]* %B_copy_1, [128 x i32]* %B_copy_2, [128 x i32]* %B_copy_3, [128 x i32]* %B_copy_4, [128 x i32]* %B_copy_5, [128 x i32]* %B_copy_6, [128 x i32]* %B_copy_7, i32* %C, i32* nonnull align 512 %C_copy)
  %_0 = getelementptr [128 x i32], [128 x i32]* %A_copy_0, i32 0, i32 0
  %_1 = getelementptr [128 x i32], [128 x i32]* %A_copy_1, i32 0, i32 0
  %_2 = getelementptr [128 x i32], [128 x i32]* %A_copy_2, i32 0, i32 0
  %_3 = getelementptr [128 x i32], [128 x i32]* %A_copy_3, i32 0, i32 0
  %_4 = getelementptr [128 x i32], [128 x i32]* %A_copy_4, i32 0, i32 0
  %_5 = getelementptr [128 x i32], [128 x i32]* %A_copy_5, i32 0, i32 0
  %_6 = getelementptr [128 x i32], [128 x i32]* %A_copy_6, i32 0, i32 0
  %_7 = getelementptr [128 x i32], [128 x i32]* %A_copy_7, i32 0, i32 0
  %_02 = getelementptr [128 x i32], [128 x i32]* %B_copy_0, i32 0, i32 0
  %_13 = getelementptr [128 x i32], [128 x i32]* %B_copy_1, i32 0, i32 0
  %_24 = getelementptr [128 x i32], [128 x i32]* %B_copy_2, i32 0, i32 0
  %_35 = getelementptr [128 x i32], [128 x i32]* %B_copy_3, i32 0, i32 0
  %_46 = getelementptr [128 x i32], [128 x i32]* %B_copy_4, i32 0, i32 0
  %_57 = getelementptr [128 x i32], [128 x i32]* %B_copy_5, i32 0, i32 0
  %_68 = getelementptr [128 x i32], [128 x i32]* %B_copy_6, i32 0, i32 0
  %_79 = getelementptr [128 x i32], [128 x i32]* %B_copy_7, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_0, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_1, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_2, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_3, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_4, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_5, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_6, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_7, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_02, i32 0, i32 1, i32 0) ], !dbg !645
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_13, i32 0, i32 1, i32 0) ], !dbg !645
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_24, i32 0, i32 1, i32 0) ], !dbg !645
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_35, i32 0, i32 1, i32 0) ], !dbg !645
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_46, i32 0, i32 1, i32 0) ], !dbg !645
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_57, i32 0, i32 1, i32 0) ], !dbg !645
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_68, i32 0, i32 1, i32 0) ], !dbg !645
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %_79, i32 0, i32 1, i32 0) ], !dbg !645
  call void @apatb_eucDis_hw([128 x i32]* %A_copy_0, [128 x i32]* %A_copy_1, [128 x i32]* %A_copy_2, [128 x i32]* %A_copy_3, [128 x i32]* %A_copy_4, [128 x i32]* %A_copy_5, [128 x i32]* %A_copy_6, [128 x i32]* %A_copy_7, [128 x i32]* %B_copy_0, [128 x i32]* %B_copy_1, [128 x i32]* %B_copy_2, [128 x i32]* %B_copy_3, [128 x i32]* %B_copy_4, [128 x i32]* %B_copy_5, [128 x i32]* %B_copy_6, [128 x i32]* %B_copy_7, i32* %C_copy)
  call void @copy_out([1024 x i32]* %0, [128 x i32]* %A_copy_0, [128 x i32]* %A_copy_1, [128 x i32]* %A_copy_2, [128 x i32]* %A_copy_3, [128 x i32]* %A_copy_4, [128 x i32]* %A_copy_5, [128 x i32]* %A_copy_6, [128 x i32]* %A_copy_7, [1024 x i32]* %1, [128 x i32]* %B_copy_0, [128 x i32]* %B_copy_1, [128 x i32]* %B_copy_2, [128 x i32]* %B_copy_3, [128 x i32]* %B_copy_4, [128 x i32]* %B_copy_5, [128 x i32]* %B_copy_6, [128 x i32]* %B_copy_7, i32* %C, i32* nonnull align 512 %C_copy)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall_4)
  call void @free(i8* %malloccall_5)
  call void @free(i8* %malloccall_6)
  call void @free(i8* %malloccall_7)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  call void @free(i8* %malloccall1_2)
  call void @free(i8* %malloccall1_3)
  call void @free(i8* %malloccall1_4)
  call void @free(i8* %malloccall1_5)
  call void @free(i8* %malloccall1_6)
  call void @free(i8* %malloccall1_7)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i32* %0 to i8*
  %6 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a1024i32.15.16([128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [1024 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [128 x i32]* %_0, null
  %2 = icmp eq [1024 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %.exit, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit ]
  %4 = urem i64 %for.loop.idx3, 8
  %5 = udiv i64 %for.loop.idx3, 8
  %dst.addr.gep1_0 = getelementptr [128 x i32], [128 x i32]* %_0, i64 0, i64 %5
  %dst.addr.gep1_1 = getelementptr [128 x i32], [128 x i32]* %_1, i64 0, i64 %5
  %dst.addr.gep1_2 = getelementptr [128 x i32], [128 x i32]* %_2, i64 0, i64 %5
  %dst.addr.gep1_3 = getelementptr [128 x i32], [128 x i32]* %_3, i64 0, i64 %5
  %dst.addr.gep1_4 = getelementptr [128 x i32], [128 x i32]* %_4, i64 0, i64 %5
  %dst.addr.gep1_5 = getelementptr [128 x i32], [128 x i32]* %_5, i64 0, i64 %5
  %dst.addr.gep1_6 = getelementptr [128 x i32], [128 x i32]* %_6, i64 0, i64 %5
  %dst.addr.gep1_7 = getelementptr [128 x i32], [128 x i32]* %_7, i64 0, i64 %5
  %_01 = bitcast i32* %dst.addr.gep1_0 to i8*
  %_12 = bitcast i32* %dst.addr.gep1_1 to i8*
  %_23 = bitcast i32* %dst.addr.gep1_2 to i8*
  %_34 = bitcast i32* %dst.addr.gep1_3 to i8*
  %_45 = bitcast i32* %dst.addr.gep1_4 to i8*
  %_56 = bitcast i32* %dst.addr.gep1_5 to i8*
  %_67 = bitcast i32* %dst.addr.gep1_6 to i8*
  %_78 = bitcast i32* %dst.addr.gep1_7 to i8*
  %src.addr.gep2 = getelementptr [1024 x i32], [1024 x i32]* %0, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  switch i64 %4, label %.case.7 [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
  ]

.case.0:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.case.1:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_12, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.case.2:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_23, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.case.3:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_34, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.case.4:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_45, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.case.5:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_56, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.case.6:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_67, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.case.7:                                          ; preds = %for.loop
  %7 = icmp eq i64 %4, 7
  call void @llvm.assume(i1 %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_78, i8* align 1 %6, i64 4, i1 false)
  br label %.exit

.exit:                                            ; preds = %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in([1024 x i32]* readonly "orig.arg.no"="0", [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [1024 x i32]* readonly "orig.arg.no"="2", [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, [128 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, i32* readonly "orig.arg.no"="4", i32* noalias align 512 "orig.arg.no"="5") #5 {
entry:
  call void @onebyonecpy_hls.p0a1024i32.15.16([128 x i32]* %_0, [128 x i32]* %_1, [128 x i32]* %_2, [128 x i32]* %_3, [128 x i32]* %_4, [128 x i32]* %_5, [128 x i32]* %_6, [128 x i32]* %_7, [1024 x i32]* %0)
  call void @onebyonecpy_hls.p0a1024i32.15.16([128 x i32]* %_01, [128 x i32]* %_12, [128 x i32]* %_23, [128 x i32]* %_34, [128 x i32]* %_45, [128 x i32]* %_56, [128 x i32]* %_67, [128 x i32]* %_78, [1024 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a1024i32.21.22([1024 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7) #3 {
entry:
  %1 = icmp eq [1024 x i32]* %0, null
  %2 = icmp eq [128 x i32]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %.exit, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit ]
  %dst.addr.gep1 = getelementptr [1024 x i32], [1024 x i32]* %0, i64 0, i64 %for.loop.idx3
  %4 = bitcast i32* %dst.addr.gep1 to i8*
  %5 = urem i64 %for.loop.idx3, 8
  %6 = udiv i64 %for.loop.idx3, 8
  %src.addr.gep2_0 = getelementptr [128 x i32], [128 x i32]* %_0, i64 0, i64 %6
  %src.addr.gep2_1 = getelementptr [128 x i32], [128 x i32]* %_1, i64 0, i64 %6
  %src.addr.gep2_2 = getelementptr [128 x i32], [128 x i32]* %_2, i64 0, i64 %6
  %src.addr.gep2_3 = getelementptr [128 x i32], [128 x i32]* %_3, i64 0, i64 %6
  %src.addr.gep2_4 = getelementptr [128 x i32], [128 x i32]* %_4, i64 0, i64 %6
  %src.addr.gep2_5 = getelementptr [128 x i32], [128 x i32]* %_5, i64 0, i64 %6
  %src.addr.gep2_6 = getelementptr [128 x i32], [128 x i32]* %_6, i64 0, i64 %6
  %src.addr.gep2_7 = getelementptr [128 x i32], [128 x i32]* %_7, i64 0, i64 %6
  %_01 = bitcast i32* %src.addr.gep2_0 to i8*
  %_12 = bitcast i32* %src.addr.gep2_1 to i8*
  %_23 = bitcast i32* %src.addr.gep2_2 to i8*
  %_34 = bitcast i32* %src.addr.gep2_3 to i8*
  %_45 = bitcast i32* %src.addr.gep2_4 to i8*
  %_56 = bitcast i32* %src.addr.gep2_5 to i8*
  %_67 = bitcast i32* %src.addr.gep2_6 to i8*
  %_78 = bitcast i32* %src.addr.gep2_7 to i8*
  switch i64 %5, label %.case.7 [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
  ]

.case.0:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_01, i64 4, i1 false)
  br label %.exit

.case.1:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_12, i64 4, i1 false)
  br label %.exit

.case.2:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_23, i64 4, i1 false)
  br label %.exit

.case.3:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_34, i64 4, i1 false)
  br label %.exit

.case.4:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_45, i64 4, i1 false)
  br label %.exit

.case.5:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_56, i64 4, i1 false)
  br label %.exit

.case.6:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_67, i64 4, i1 false)
  br label %.exit

.case.7:                                          ; preds = %for.loop
  %7 = icmp eq i64 %5, 7
  call void @llvm.assume(i1 %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_78, i64 4, i1 false)
  br label %.exit

.exit:                                            ; preds = %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out([1024 x i32]* "orig.arg.no"="0", [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [1024 x i32]* "orig.arg.no"="2", [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, [128 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, i32* "orig.arg.no"="4", i32* noalias readonly align 512 "orig.arg.no"="5") #6 {
entry:
  call void @onebyonecpy_hls.p0a1024i32.21.22([1024 x i32]* %0, [128 x i32]* %_0, [128 x i32]* %_1, [128 x i32]* %_2, [128 x i32]* %_3, [128 x i32]* %_4, [128 x i32]* %_5, [128 x i32]* %_6, [128 x i32]* %_7)
  call void @onebyonecpy_hls.p0a1024i32.21.22([1024 x i32]* %1, [128 x i32]* %_01, [128 x i32]* %_12, [128 x i32]* %_23, [128 x i32]* %_34, [128 x i32]* %_45, [128 x i32]* %_56, [128 x i32]* %_67, [128 x i32]* %_78)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  ret void
}

declare void @apatb_eucDis_hw([128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, i32*)

define void @eucDis_hw_stub_wrapper([128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, [128 x i32]*, i32*) #7 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %17 = bitcast i8* %malloccall to [1024 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %18 = bitcast i8* %malloccall1 to [1024 x i32]*
  call void @copy_out([1024 x i32]* %17, [128 x i32]* %0, [128 x i32]* %1, [128 x i32]* %2, [128 x i32]* %3, [128 x i32]* %4, [128 x i32]* %5, [128 x i32]* %6, [128 x i32]* %7, [1024 x i32]* %18, [128 x i32]* %8, [128 x i32]* %9, [128 x i32]* %10, [128 x i32]* %11, [128 x i32]* %12, [128 x i32]* %13, [128 x i32]* %14, [128 x i32]* %15, i32* null, i32* %16)
  %19 = bitcast [1024 x i32]* %17 to i32*
  %20 = bitcast [1024 x i32]* %18 to i32*
  call void @eucDis_hw_stub(i32* %19, i32* %20, i32* %16)
  call void @copy_in([1024 x i32]* %17, [128 x i32]* %0, [128 x i32]* %1, [128 x i32]* %2, [128 x i32]* %3, [128 x i32]* %4, [128 x i32]* %5, [128 x i32]* %6, [128 x i32]* %7, [1024 x i32]* %18, [128 x i32]* %8, [128 x i32]* %9, [128 x i32]* %10, [128 x i32]* %11, [128 x i32]* %12, [128 x i32]* %13, [128 x i32]* %14, [128 x i32]* %15, i32* null, i32* %16)
  ret void
}

declare void @eucDis_hw_stub(i32*, i32*, i32*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 6, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "eucDis", linkageName: "_Z6eucDisPjS_S_", scope: !7, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, unit: !18, variables: !4)
!7 = !DIFile(filename: "vitis_hls/eucMod.cpp", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !16}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "INPUT", file: !12, line: 11, baseType: !13)
!12 = !DIFile(filename: "vitis_hls/eucMod.h", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdint.h", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "OUTPUT", file: !12, line: 12, baseType: !13)
!18 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !19, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !20)
!19 = !DIFile(filename: "E:/Magisterio/IPD-432/Tarea_4/zynq_hls_coprocessor/solution1/.autopilot/db\5CeucMod.pp.0.cpp", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!20 = !{!21, !29, !31, !33, !37, !39, !41, !43, !45, !47, !49, !51, !57, !61, !63, !65, !70, !72, !74, !76, !78, !80, !82, !84, !87, !89, !93, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !122, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !160, !164, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !190, !194, !198, !200, !202, !204, !209, !213, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !246, !250, !254, !256, !258, !260, !267, !271, !275, !277, !279, !281, !283, !285, !287, !291, !295, !297, !299, !301, !303, !307, !311, !315, !317, !319, !321, !323, !325, !327, !331, !335, !339, !341, !345, !349, !351, !353, !355, !357, !359, !361, !366, !372, !376, !380, !385, !387, !391, !395, !408, !412, !416, !420, !424, !429, !433, !437, !441, !445, !453, !457, !461, !465, !469, !473, !479, !483, !487, !489, !497, !501, !508, !510, !514, !518, !522, !526, !531, !535, !539, !540, !541, !542, !544, !545, !546, !547, !548, !549, !550, !552, !553, !554, !555, !556, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !589, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !619, !622, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643}
!21 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !23, file: !28, line: 106)
!22 = !DINamespace(name: "std", scope: null)
!23 = !DISubprogram(name: "acos", scope: !24, file: !24, line: 190, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!24 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !27}
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !30, file: !28, line: 125)
!30 = !DISubprogram(name: "asin", scope: !24, file: !24, line: 189, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !32, file: !28, line: 144)
!32 = !DISubprogram(name: "atan", scope: !24, file: !24, line: 191, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !34, file: !28, line: 163)
!34 = !DISubprogram(name: "atan2", scope: !24, file: !24, line: 192, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!35 = !DISubroutineType(types: !36)
!36 = !{!27, !27, !27}
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !38, file: !28, line: 184)
!38 = !DISubprogram(name: "ceil", scope: !24, file: !24, line: 198, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !40, file: !28, line: 203)
!40 = !DISubprogram(name: "cos", scope: !24, file: !24, line: 184, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !42, file: !28, line: 222)
!42 = !DISubprogram(name: "cosh", scope: !24, file: !24, line: 187, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !44, file: !28, line: 241)
!44 = !DISubprogram(name: "exp", scope: !24, file: !24, line: 193, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !46, file: !28, line: 260)
!46 = !DISubprogram(name: "fabs", scope: !24, file: !24, line: 204, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !48, file: !28, line: 279)
!48 = !DISubprogram(name: "floor", scope: !24, file: !24, line: 199, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !50, file: !28, line: 298)
!50 = !DISubprogram(name: "fmod", scope: !24, file: !24, line: 246, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !52, file: !28, line: 319)
!52 = !DISubprogram(name: "frexp", scope: !24, file: !24, line: 244, type: !53, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DISubroutineType(types: !54)
!54 = !{!27, !27, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !58, file: !28, line: 338)
!58 = !DISubprogram(name: "ldexp", scope: !24, file: !24, line: 243, type: !59, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!59 = !DISubroutineType(types: !60)
!60 = !{!27, !27, !56}
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !62, file: !28, line: 357)
!62 = !DISubprogram(name: "log", scope: !24, file: !24, line: 194, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !64, file: !28, line: 376)
!64 = !DISubprogram(name: "log10", scope: !24, file: !24, line: 195, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !66, file: !28, line: 395)
!66 = !DISubprogram(name: "modf", scope: !24, file: !24, line: 245, type: !67, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DISubroutineType(types: !68)
!68 = !{!27, !27, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !71, file: !28, line: 407)
!71 = !DISubprogram(name: "pow", scope: !24, file: !24, line: 196, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !73, file: !28, line: 444)
!73 = !DISubprogram(name: "sin", scope: !24, file: !24, line: 183, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !75, file: !28, line: 463)
!75 = !DISubprogram(name: "sinh", scope: !24, file: !24, line: 186, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !77, file: !28, line: 482)
!77 = !DISubprogram(name: "sqrt", scope: !24, file: !24, line: 197, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !79, file: !28, line: 501)
!79 = !DISubprogram(name: "tan", scope: !24, file: !24, line: 185, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !81, file: !28, line: 520)
!81 = !DISubprogram(name: "tanh", scope: !24, file: !24, line: 188, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !83, file: !28, line: 1077)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !24, line: 373, baseType: !27)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !85, file: !28, line: 1078)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !24, line: 372, baseType: !86)
!86 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !88, file: !28, line: 1081)
!88 = !DISubprogram(name: "acosh", scope: !24, file: !24, line: 705, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !90, file: !28, line: 1082)
!90 = !DISubprogram(name: "acoshf", scope: !24, file: !24, line: 706, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DISubroutineType(types: !92)
!92 = !{!86, !86}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !94, file: !28, line: 1083)
!94 = !DISubprogram(name: "acoshl", scope: !24, file: !24, line: 707, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !97}
!97 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !99, file: !28, line: 1085)
!99 = !DISubprogram(name: "asinh", scope: !24, file: !24, line: 710, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !101, file: !28, line: 1086)
!101 = !DISubprogram(name: "asinhf", scope: !24, file: !24, line: 711, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !103, file: !28, line: 1087)
!103 = !DISubprogram(name: "asinhl", scope: !24, file: !24, line: 712, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !105, file: !28, line: 1089)
!105 = !DISubprogram(name: "atanh", scope: !24, file: !24, line: 715, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !107, file: !28, line: 1090)
!107 = !DISubprogram(name: "atanhf", scope: !24, file: !24, line: 716, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !109, file: !28, line: 1091)
!109 = !DISubprogram(name: "atanhl", scope: !24, file: !24, line: 717, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !111, file: !28, line: 1093)
!111 = !DISubprogram(name: "cbrt", scope: !24, file: !24, line: 877, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !113, file: !28, line: 1094)
!113 = !DISubprogram(name: "cbrtf", scope: !24, file: !24, line: 878, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !115, file: !28, line: 1095)
!115 = !DISubprogram(name: "cbrtl", scope: !24, file: !24, line: 879, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !117, file: !28, line: 1097)
!117 = !DISubprogram(name: "copysign", scope: !24, file: !24, line: 1063, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !119, file: !28, line: 1098)
!119 = !DISubprogram(name: "copysignf", scope: !24, file: !24, line: 1064, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DISubroutineType(types: !121)
!121 = !{!86, !86, !86}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !123, file: !28, line: 1099)
!123 = !DISubprogram(name: "copysignl", scope: !24, file: !24, line: 1065, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DISubroutineType(types: !125)
!125 = !{!97, !97, !97}
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !127, file: !28, line: 1101)
!127 = !DISubprogram(name: "erf", scope: !24, file: !24, line: 901, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !129, file: !28, line: 1102)
!129 = !DISubprogram(name: "erff", scope: !24, file: !24, line: 902, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !131, file: !28, line: 1103)
!131 = !DISubprogram(name: "erfl", scope: !24, file: !24, line: 903, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !133, file: !28, line: 1105)
!133 = !DISubprogram(name: "erfc", scope: !24, file: !24, line: 906, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !135, file: !28, line: 1106)
!135 = !DISubprogram(name: "erfcf", scope: !24, file: !24, line: 907, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !137, file: !28, line: 1107)
!137 = !DISubprogram(name: "erfcl", scope: !24, file: !24, line: 908, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !139, file: !28, line: 1109)
!139 = !DISubprogram(name: "exp2", scope: !24, file: !24, line: 728, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !141, file: !28, line: 1110)
!141 = !DISubprogram(name: "exp2f", scope: !24, file: !24, line: 729, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !143, file: !28, line: 1111)
!143 = !DISubprogram(name: "exp2l", scope: !24, file: !24, line: 730, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !145, file: !28, line: 1113)
!145 = !DISubprogram(name: "expm1", scope: !24, file: !24, line: 734, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !147, file: !28, line: 1114)
!147 = !DISubprogram(name: "expm1f", scope: !24, file: !24, line: 735, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !149, file: !28, line: 1115)
!149 = !DISubprogram(name: "expm1l", scope: !24, file: !24, line: 736, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !151, file: !28, line: 1117)
!151 = !DISubprogram(name: "fdim", scope: !24, file: !24, line: 1109, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !153, file: !28, line: 1118)
!153 = !DISubprogram(name: "fdimf", scope: !24, file: !24, line: 1110, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !155, file: !28, line: 1119)
!155 = !DISubprogram(name: "fdiml", scope: !24, file: !24, line: 1111, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !157, file: !28, line: 1121)
!157 = !DISubprogram(name: "fma", scope: !24, file: !24, line: 1130, type: !158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DISubroutineType(types: !159)
!159 = !{!27, !27, !27, !27}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !161, file: !28, line: 1122)
!161 = !DISubprogram(name: "fmaf", scope: !24, file: !24, line: 1131, type: !162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{!86, !86, !86, !86}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !165, file: !28, line: 1123)
!165 = !DISubprogram(name: "fmal", scope: !24, file: !24, line: 1132, type: !166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{!97, !97, !97, !97}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !169, file: !28, line: 1125)
!169 = !DISubprogram(name: "fmax", scope: !24, file: !24, line: 1119, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !171, file: !28, line: 1126)
!171 = !DISubprogram(name: "fmaxf", scope: !24, file: !24, line: 1120, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !173, file: !28, line: 1127)
!173 = !DISubprogram(name: "fmaxl", scope: !24, file: !24, line: 1121, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !175, file: !28, line: 1129)
!175 = !DISubprogram(name: "fmin", scope: !24, file: !24, line: 1124, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !177, file: !28, line: 1130)
!177 = !DISubprogram(name: "fminf", scope: !24, file: !24, line: 1125, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !179, file: !28, line: 1131)
!179 = !DISubprogram(name: "fminl", scope: !24, file: !24, line: 1126, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !181, file: !28, line: 1133)
!181 = !DISubprogram(name: "hypot", scope: !24, file: !24, line: 882, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !183, file: !28, line: 1134)
!183 = !DISubprogram(name: "hypotf", scope: !24, file: !24, line: 883, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !185, file: !28, line: 1135)
!185 = !DISubprogram(name: "hypotl", scope: !24, file: !24, line: 887, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !187, file: !28, line: 1137)
!187 = !DISubprogram(name: "ilogb", scope: !24, file: !24, line: 748, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!56, !27}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !191, file: !28, line: 1138)
!191 = !DISubprogram(name: "ilogbf", scope: !24, file: !24, line: 749, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!56, !86}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !195, file: !28, line: 1139)
!195 = !DISubprogram(name: "ilogbl", scope: !24, file: !24, line: 750, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{!56, !97}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !199, file: !28, line: 1141)
!199 = !DISubprogram(name: "lgamma", scope: !24, file: !24, line: 911, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !201, file: !28, line: 1142)
!201 = !DISubprogram(name: "lgammaf", scope: !24, file: !24, line: 912, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !203, file: !28, line: 1143)
!203 = !DISubprogram(name: "lgammal", scope: !24, file: !24, line: 913, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !205, file: !28, line: 1145)
!205 = !DISubprogram(name: "llrint", scope: !24, file: !24, line: 946, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !27}
!208 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !210, file: !28, line: 1146)
!210 = !DISubprogram(name: "llrintf", scope: !24, file: !24, line: 947, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!208, !86}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !214, file: !28, line: 1147)
!214 = !DISubprogram(name: "llrintl", scope: !24, file: !24, line: 948, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{!208, !97}
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !218, file: !28, line: 1149)
!218 = !DISubprogram(name: "llround", scope: !24, file: !24, line: 1038, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !220, file: !28, line: 1150)
!220 = !DISubprogram(name: "llroundf", scope: !24, file: !24, line: 1039, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !222, file: !28, line: 1151)
!222 = !DISubprogram(name: "llroundl", scope: !24, file: !24, line: 1040, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !224, file: !28, line: 1153)
!224 = !DISubprogram(name: "log1p", scope: !24, file: !24, line: 768, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !226, file: !28, line: 1154)
!226 = !DISubprogram(name: "log1pf", scope: !24, file: !24, line: 769, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !228, file: !28, line: 1155)
!228 = !DISubprogram(name: "log1pl", scope: !24, file: !24, line: 770, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !230, file: !28, line: 1157)
!230 = !DISubprogram(name: "log2", scope: !24, file: !24, line: 773, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !232, file: !28, line: 1158)
!232 = !DISubprogram(name: "log2f", scope: !24, file: !24, line: 774, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !234, file: !28, line: 1159)
!234 = !DISubprogram(name: "log2l", scope: !24, file: !24, line: 775, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !236, file: !28, line: 1161)
!236 = !DISubprogram(name: "logb", scope: !24, file: !24, line: 778, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !238, file: !28, line: 1162)
!238 = !DISubprogram(name: "logbf", scope: !24, file: !24, line: 779, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !240, file: !28, line: 1163)
!240 = !DISubprogram(name: "logbl", scope: !24, file: !24, line: 780, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !242, file: !28, line: 1165)
!242 = !DISubprogram(name: "lrint", scope: !24, file: !24, line: 942, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !27}
!245 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !247, file: !28, line: 1166)
!247 = !DISubprogram(name: "lrintf", scope: !24, file: !24, line: 943, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!245, !86}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !251, file: !28, line: 1167)
!251 = !DISubprogram(name: "lrintl", scope: !24, file: !24, line: 944, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{!245, !97}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !255, file: !28, line: 1169)
!255 = !DISubprogram(name: "lround", scope: !24, file: !24, line: 1035, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !257, file: !28, line: 1170)
!257 = !DISubprogram(name: "lroundf", scope: !24, file: !24, line: 1036, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !259, file: !28, line: 1171)
!259 = !DISubprogram(name: "lroundl", scope: !24, file: !24, line: 1037, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !261, file: !28, line: 1173)
!261 = !DISubprogram(name: "nan", scope: !24, file: !24, line: 1087, type: !262, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DISubroutineType(types: !263)
!263 = !{!27, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !268, file: !28, line: 1174)
!268 = !DISubprogram(name: "nanf", scope: !24, file: !24, line: 1088, type: !269, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DISubroutineType(types: !270)
!270 = !{!86, !264}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !272, file: !28, line: 1175)
!272 = !DISubprogram(name: "nanl", scope: !24, file: !24, line: 1089, type: !273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubroutineType(types: !274)
!274 = !{!97, !264}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !276, file: !28, line: 1177)
!276 = !DISubprogram(name: "nearbyint", scope: !24, file: !24, line: 931, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !278, file: !28, line: 1178)
!278 = !DISubprogram(name: "nearbyintf", scope: !24, file: !24, line: 932, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !280, file: !28, line: 1179)
!280 = !DISubprogram(name: "nearbyintl", scope: !24, file: !24, line: 933, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !282, file: !28, line: 1181)
!282 = !DISubprogram(name: "nextafter", scope: !24, file: !24, line: 1098, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !284, file: !28, line: 1182)
!284 = !DISubprogram(name: "nextafterf", scope: !24, file: !24, line: 1099, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !286, file: !28, line: 1183)
!286 = !DISubprogram(name: "nextafterl", scope: !24, file: !24, line: 1100, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !288, file: !28, line: 1185)
!288 = !DISubprogram(name: "nexttoward", scope: !24, file: !24, line: 1103, type: !289, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DISubroutineType(types: !290)
!290 = !{!27, !27, !97}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !292, file: !28, line: 1186)
!292 = !DISubprogram(name: "nexttowardf", scope: !24, file: !24, line: 1104, type: !293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubroutineType(types: !294)
!294 = !{!86, !86, !97}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !296, file: !28, line: 1187)
!296 = !DISubprogram(name: "nexttowardl", scope: !24, file: !24, line: 1105, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !298, file: !28, line: 1189)
!298 = !DISubprogram(name: "remainder", scope: !24, file: !24, line: 1053, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !300, file: !28, line: 1190)
!300 = !DISubprogram(name: "remainderf", scope: !24, file: !24, line: 1054, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !302, file: !28, line: 1191)
!302 = !DISubprogram(name: "remainderl", scope: !24, file: !24, line: 1055, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !304, file: !28, line: 1193)
!304 = !DISubprogram(name: "remquo", scope: !24, file: !24, line: 1058, type: !305, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{!27, !27, !27, !55}
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !308, file: !28, line: 1194)
!308 = !DISubprogram(name: "remquof", scope: !24, file: !24, line: 1059, type: !309, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DISubroutineType(types: !310)
!310 = !{!86, !86, !86, !55}
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !312, file: !28, line: 1195)
!312 = !DISubprogram(name: "remquol", scope: !24, file: !24, line: 1060, type: !313, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DISubroutineType(types: !314)
!314 = !{!97, !97, !97, !55}
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !316, file: !28, line: 1197)
!316 = !DISubprogram(name: "rint", scope: !24, file: !24, line: 937, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !318, file: !28, line: 1198)
!318 = !DISubprogram(name: "rintf", scope: !24, file: !24, line: 938, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !320, file: !28, line: 1199)
!320 = !DISubprogram(name: "rintl", scope: !24, file: !24, line: 939, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !322, file: !28, line: 1201)
!322 = !DISubprogram(name: "round", scope: !24, file: !24, line: 1030, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !324, file: !28, line: 1202)
!324 = !DISubprogram(name: "roundf", scope: !24, file: !24, line: 1031, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !326, file: !28, line: 1203)
!326 = !DISubprogram(name: "roundl", scope: !24, file: !24, line: 1032, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !328, file: !28, line: 1205)
!328 = !DISubprogram(name: "scalbln", scope: !24, file: !24, line: 871, type: !329, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!27, !27, !245}
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !332, file: !28, line: 1206)
!332 = !DISubprogram(name: "scalblnf", scope: !24, file: !24, line: 872, type: !333, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DISubroutineType(types: !334)
!334 = !{!86, !86, !245}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !336, file: !28, line: 1207)
!336 = !DISubprogram(name: "scalblnl", scope: !24, file: !24, line: 873, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{!97, !97, !245}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !340, file: !28, line: 1209)
!340 = !DISubprogram(name: "scalbn", scope: !24, file: !24, line: 867, type: !59, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !342, file: !28, line: 1210)
!342 = !DISubprogram(name: "scalbnf", scope: !24, file: !24, line: 868, type: !343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{!86, !86, !56}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !346, file: !28, line: 1211)
!346 = !DISubprogram(name: "scalbnl", scope: !24, file: !24, line: 869, type: !347, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DISubroutineType(types: !348)
!348 = !{!97, !97, !56}
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !350, file: !28, line: 1213)
!350 = !DISubprogram(name: "tgamma", scope: !24, file: !24, line: 918, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !352, file: !28, line: 1214)
!352 = !DISubprogram(name: "tgammaf", scope: !24, file: !24, line: 919, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !354, file: !28, line: 1215)
!354 = !DISubprogram(name: "tgammal", scope: !24, file: !24, line: 920, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !356, file: !28, line: 1217)
!356 = !DISubprogram(name: "trunc", scope: !24, file: !24, line: 1044, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !358, file: !28, line: 1218)
!358 = !DISubprogram(name: "truncf", scope: !24, file: !24, line: 1045, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !360, file: !28, line: 1219)
!360 = !DISubprogram(name: "truncl", scope: !24, file: !24, line: 1046, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !362, file: !365, line: 124)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !363, line: 53, baseType: !364)
!363 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !363, line: 50, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!365 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdlib", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !367, file: !365, line: 125)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !363, line: 58, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !363, line: 55, size: 128, flags: DIFlagTypePassByValue, elements: !369, identifier: "_ZTS7_ldiv_t")
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !368, file: !363, line: 56, baseType: !245, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !368, file: !363, line: 57, baseType: !245, size: 64, offset: 64)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !373, file: !365, line: 127)
!373 = !DISubprogram(name: "abort", scope: !363, file: !363, line: 320, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{null}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !377, file: !365, line: 128)
!377 = !DISubprogram(name: "abs", scope: !24, file: !24, line: 254, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!56, !56}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !381, file: !365, line: 129)
!381 = !DISubprogram(name: "atexit", scope: !363, file: !363, line: 340, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!56, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !386, file: !365, line: 135)
!386 = !DISubprogram(name: "atof", scope: !24, file: !24, line: 259, type: !262, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !388, file: !365, line: 136)
!388 = !DISubprogram(name: "atoi", scope: !363, file: !363, line: 346, type: !389, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!389 = !DISubroutineType(types: !390)
!390 = !{!56, !264}
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !392, file: !365, line: 137)
!392 = !DISubprogram(name: "atol", scope: !363, file: !363, line: 348, type: !393, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DISubroutineType(types: !394)
!394 = !{!245, !264}
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !396, file: !365, line: 138)
!396 = !DISubprogram(name: "bsearch", scope: !363, file: !363, line: 352, type: !397, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !400, !400, !402, !402, !405}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !403, line: 35, baseType: !404)
!403 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!404 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!56, !400, !400}
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !409, file: !365, line: 139)
!409 = !DISubprogram(name: "calloc", scope: !363, file: !363, line: 446, type: !410, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!410 = !DISubroutineType(types: !411)
!411 = !{!399, !402, !402}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !413, file: !365, line: 140)
!413 = !DISubprogram(name: "div", scope: !363, file: !363, line: 358, type: !414, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{!362, !56, !56}
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !417, file: !365, line: 141)
!417 = !DISubprogram(name: "exit", scope: !363, file: !363, line: 306, type: !418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !56}
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !421, file: !365, line: 142)
!421 = !DISubprogram(name: "free", scope: !363, file: !363, line: 447, type: !422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !399}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !425, file: !365, line: 143)
!425 = !DISubprogram(name: "getenv", scope: !363, file: !363, line: 359, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !264}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !430, file: !365, line: 144)
!430 = !DISubprogram(name: "labs", scope: !24, file: !24, line: 255, type: !431, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{!245, !245}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !434, file: !365, line: 145)
!434 = !DISubprogram(name: "ldiv", scope: !363, file: !363, line: 369, type: !435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!367, !245, !245}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !438, file: !365, line: 146)
!438 = !DISubprogram(name: "malloc", scope: !363, file: !363, line: 448, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubroutineType(types: !440)
!440 = !{!399, !402}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !442, file: !365, line: 148)
!442 = !DISubprogram(name: "mblen", scope: !363, file: !363, line: 371, type: !443, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!443 = !DISubroutineType(types: !444)
!444 = !{!56, !264, !402}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !446, file: !365, line: 149)
!446 = !DISubprogram(name: "mbstowcs", scope: !363, file: !363, line: 379, type: !447, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!447 = !DISubroutineType(types: !448)
!448 = !{!402, !449, !452, !402}
!449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !454, file: !365, line: 150)
!454 = !DISubprogram(name: "mbtowc", scope: !363, file: !363, line: 377, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!56, !449, !452, !402}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !458, file: !365, line: 152)
!458 = !DISubprogram(name: "qsort", scope: !363, file: !363, line: 353, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !399, !402, !402, !405}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !462, file: !365, line: 158)
!462 = !DISubprogram(name: "rand", scope: !363, file: !363, line: 382, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{!56}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !466, file: !365, line: 159)
!466 = !DISubprogram(name: "realloc", scope: !363, file: !363, line: 449, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DISubroutineType(types: !468)
!468 = !{!399, !399, !402}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !470, file: !365, line: 160)
!470 = !DISubprogram(name: "srand", scope: !363, file: !363, line: 384, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !15}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !474, file: !365, line: 161)
!474 = !DISubprogram(name: "strtod", scope: !363, file: !363, line: 396, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{!27, !452, !477}
!477 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !480, file: !365, line: 162)
!480 = !DISubprogram(name: "strtol", scope: !363, file: !363, line: 430, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{!245, !452, !477, !56}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !484, file: !365, line: 163)
!484 = !DISubprogram(name: "strtoul", scope: !363, file: !363, line: 432, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!404, !452, !477, !56}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !488, file: !365, line: 164)
!488 = !DISubprogram(name: "system", scope: !363, file: !363, line: 436, type: !389, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !490, file: !365, line: 166)
!490 = !DISubprogram(name: "wcstombs", scope: !363, file: !363, line: 441, type: !491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DISubroutineType(types: !492)
!492 = !{!402, !493, !494, !402}
!493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !428)
!494 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !498, file: !365, line: 167)
!498 = !DISubprogram(name: "wctomb", scope: !363, file: !363, line: 439, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!499 = !DISubroutineType(types: !500)
!500 = !{!56, !428, !451}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !503, file: !365, line: 220)
!502 = !DINamespace(name: "__gnu_cxx", scope: null)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !363, line: 644, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 644, size: 128, flags: DIFlagTypePassByValue, elements: !505, identifier: "_ZTS7lldiv_t")
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !504, file: !363, line: 644, baseType: !208, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !504, file: !363, line: 644, baseType: !208, size: 64, offset: 64)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !509, file: !365, line: 226)
!509 = !DISubprogram(name: "_Exit", scope: !363, file: !363, line: 311, type: !418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !511, file: !365, line: 230)
!511 = !DISubprogram(name: "llabs", scope: !363, file: !363, line: 648, type: !512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!512 = !DISubroutineType(types: !513)
!513 = !{!208, !208}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !515, file: !365, line: 236)
!515 = !DISubprogram(name: "lldiv", scope: !363, file: !363, line: 646, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!503, !208, !208}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !519, file: !365, line: 247)
!519 = !DISubprogram(name: "atoll", scope: !363, file: !363, line: 657, type: !520, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{!208, !264}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !523, file: !365, line: 248)
!523 = !DISubprogram(name: "strtoll", scope: !363, file: !363, line: 653, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!208, !452, !477, !56}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !527, file: !365, line: 249)
!527 = !DISubprogram(name: "strtoull", scope: !363, file: !363, line: 654, type: !528, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !452, !477, !56}
!530 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !532, file: !365, line: 251)
!532 = !DISubprogram(name: "strtof", scope: !363, file: !363, line: 403, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!86, !452, !477}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !502, entity: !536, file: !365, line: 252)
!536 = !DISubprogram(name: "strtold", scope: !363, file: !363, line: 414, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!97, !452, !477}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !503, file: !365, line: 260)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !509, file: !365, line: 262)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !511, file: !365, line: 264)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !543, file: !365, line: 265)
!543 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !502, file: !365, line: 233, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !515, file: !365, line: 266)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !519, file: !365, line: 268)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !532, file: !365, line: 269)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !523, file: !365, line: 270)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !527, file: !365, line: 271)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !536, file: !365, line: 272)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !373, file: !551, line: 38)
!551 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !381, file: !551, line: 39)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !417, file: !551, line: 40)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !362, file: !551, line: 51)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !367, file: !551, line: 52)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !557, file: !551, line: 54)
!557 = !DISubprogram(name: "abs", linkageName: "_ZSt3absn", scope: !22, file: !365, line: 185, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !560}
!560 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !386, file: !551, line: 55)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !388, file: !551, line: 56)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !392, file: !551, line: 57)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !396, file: !551, line: 58)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !409, file: !551, line: 59)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !543, file: !551, line: 60)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !421, file: !551, line: 61)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !425, file: !551, line: 62)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !430, file: !551, line: 63)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !434, file: !551, line: 64)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !438, file: !551, line: 65)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !442, file: !551, line: 67)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !446, file: !551, line: 68)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !454, file: !551, line: 69)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !458, file: !551, line: 71)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !462, file: !551, line: 72)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !466, file: !551, line: 73)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !470, file: !551, line: 74)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !474, file: !551, line: 75)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !480, file: !551, line: 76)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !484, file: !551, line: 77)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !488, file: !551, line: 78)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !490, file: !551, line: 80)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !498, file: !551, line: 81)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !586, file: !588, line: 48)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !14, line: 35, baseType: !587)
!587 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!588 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdint", directory: "E:\5CMagisterio\5CIPD-432\5CTarea_4")
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !590, file: !588, line: 49)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !14, line: 37, baseType: !591)
!591 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !593, file: !588, line: 50)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !14, line: 39, baseType: !56)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !595, file: !588, line: 51)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !14, line: 41, baseType: !208)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !597, file: !588, line: 53)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !14, line: 58, baseType: !587)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !599, file: !588, line: 54)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !14, line: 60, baseType: !591)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !601, file: !588, line: 55)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !14, line: 62, baseType: !56)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !603, file: !588, line: 56)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !14, line: 64, baseType: !208)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !605, file: !588, line: 58)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !14, line: 45, baseType: !587)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !607, file: !588, line: 59)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !14, line: 47, baseType: !591)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !609, file: !588, line: 60)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !14, line: 49, baseType: !56)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !611, file: !588, line: 61)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !14, line: 51, baseType: !208)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !613, file: !588, line: 63)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !14, line: 68, baseType: !208)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !615, file: !588, line: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !403, line: 62, baseType: !245)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !617, file: !588, line: 66)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 36, baseType: !618)
!618 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !620, file: !588, line: 67)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !14, line: 38, baseType: !621)
!621 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !13, file: !588, line: 68)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !624, file: !588, line: 69)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 42, baseType: !530)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !626, file: !588, line: 71)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !14, line: 59, baseType: !618)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !628, file: !588, line: 72)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !14, line: 61, baseType: !621)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !630, file: !588, line: 73)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !14, line: 63, baseType: !15)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !632, file: !588, line: 74)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !14, line: 65, baseType: !530)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !634, file: !588, line: 76)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !14, line: 46, baseType: !618)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !636, file: !588, line: 77)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !14, line: 48, baseType: !621)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !638, file: !588, line: 78)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !14, line: 50, baseType: !15)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !640, file: !588, line: 79)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !14, line: 52, baseType: !530)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !642, file: !588, line: 81)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !14, line: 69, baseType: !530)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !644, file: !588, line: 82)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !403, line: 75, baseType: !404)
!645 = !DILocation(line: 7, column: 9, scope: !6)
