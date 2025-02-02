; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=slp-vectorizer,dce -S -mtriple=x86_64-apple-macosx10.8.0 -mcpu=corei7 | FileCheck %s

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

%struct.Ray.5.11.53.113.119.137.149.185.329.389.416 = type { %struct.Vec.0.6.48.108.114.132.144.180.324.384.414, %struct.Vec.0.6.48.108.114.132.144.180.324.384.414 }
%struct.Vec.0.6.48.108.114.132.144.180.324.384.414 = type { double, double, double }

; Function Attrs: ssp uwtable
define void @main() #0 {
; CHECK-LABEL: @main(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br i1 undef, label [[COND_TRUE:%.*]], label [[COND_END:%.*]]
; CHECK:       cond.true:
; CHECK-NEXT:    unreachable
; CHECK:       cond.end:
; CHECK-NEXT:    br label [[INVOKE_CONT:%.*]]
; CHECK:       invoke.cont:
; CHECK-NEXT:    br i1 undef, label [[ARRAYCTOR_CONT:%.*]], label [[INVOKE_CONT]]
; CHECK:       arrayctor.cont:
; CHECK-NEXT:    [[AGG_TMP101211_SROA_0_0_IDX:%.*]] = getelementptr inbounds [[STRUCT_RAY_5_11_53_113_119_137_149_185_329_389_416:%.*]], ptr undef, i64 0, i32 1, i32 0
; CHECK-NEXT:    br label [[FOR_COND36_PREHEADER:%.*]]
; CHECK:       for.cond36.preheader:
; CHECK-NEXT:    br i1 undef, label [[FOR_BODY42_LR_PH_US:%.*]], label [[_Z5CLAMPD_EXIT_1:%.*]]
; CHECK:       cond.false51.us:
; CHECK-NEXT:    unreachable
; CHECK:       cond.true48.us:
; CHECK-NEXT:    br i1 undef, label [[COND_TRUE63_US:%.*]], label [[COND_FALSE66_US:%.*]]
; CHECK:       cond.false66.us:
; CHECK-NEXT:    [[ADD_I276_US:%.*]] = fadd double 0.000000e+00, undef
; CHECK-NEXT:    [[TMP0:%.*]] = insertelement <2 x double> <double poison, double 0xBFA5CC2D1960285F>, double [[ADD_I276_US]], i32 0
; CHECK-NEXT:    [[TMP1:%.*]] = fadd <2 x double> <double 0.000000e+00, double undef>, [[TMP0]]
; CHECK-NEXT:    [[TMP2:%.*]] = fmul <2 x double> [[TMP1]], <double 1.400000e+02, double 1.400000e+02>
; CHECK-NEXT:    [[TMP3:%.*]] = fadd <2 x double> [[TMP2]], <double 5.000000e+01, double 5.200000e+01>
; CHECK-NEXT:    store <2 x double> [[TMP3]], ptr undef, align 8
; CHECK-NEXT:    [[TMP4:%.*]] = fmul <2 x double> [[TMP1]], [[TMP1]]
; CHECK-NEXT:    store <2 x double> [[TMP4]], ptr [[AGG_TMP101211_SROA_0_0_IDX]], align 8
; CHECK-NEXT:    unreachable
; CHECK:       cond.true63.us:
; CHECK-NEXT:    unreachable
; CHECK:       for.body42.lr.ph.us:
; CHECK-NEXT:    br i1 undef, label [[COND_TRUE48_US:%.*]], label [[COND_FALSE51_US:%.*]]
; CHECK:       _Z5clampd.exit.1:
; CHECK-NEXT:    br label [[FOR_COND36_PREHEADER]]
;
entry:
  br i1 undef, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  unreachable

cond.end:                                         ; preds = %entry
  br label %invoke.cont

invoke.cont:                                      ; preds = %invoke.cont, %cond.end
  br i1 undef, label %arrayctor.cont, label %invoke.cont

arrayctor.cont:                                   ; preds = %invoke.cont
  %agg.tmp99208.sroa.1.8.idx388 = getelementptr inbounds %struct.Ray.5.11.53.113.119.137.149.185.329.389.416, ptr undef, i64 0, i32 0, i32 1
  %agg.tmp101211.sroa.0.0.idx = getelementptr inbounds %struct.Ray.5.11.53.113.119.137.149.185.329.389.416, ptr undef, i64 0, i32 1, i32 0
  %agg.tmp101211.sroa.1.8.idx390 = getelementptr inbounds %struct.Ray.5.11.53.113.119.137.149.185.329.389.416, ptr undef, i64 0, i32 1, i32 1
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %_Z5clampd.exit.1, %arrayctor.cont
  br i1 undef, label %for.body42.lr.ph.us, label %_Z5clampd.exit.1

cond.false51.us:                                  ; preds = %for.body42.lr.ph.us
  unreachable

cond.true48.us:                                   ; preds = %for.body42.lr.ph.us
  br i1 undef, label %cond.true63.us, label %cond.false66.us

cond.false66.us:                                  ; preds = %cond.true48.us
  %add.i276.us = fadd double 0.000000e+00, undef
  %add.i264.us = fadd double %add.i276.us, 0.000000e+00
  %add4.i267.us = fadd double undef, 0xBFA5CC2D1960285F
  %mul.i254.us = fmul double %add.i264.us, 1.400000e+02
  %mul2.i256.us = fmul double %add4.i267.us, 1.400000e+02
  %add.i243.us = fadd double %mul.i254.us, 5.000000e+01
  %add4.i246.us = fadd double %mul2.i256.us, 5.200000e+01
  %mul.i.i.us = fmul double undef, %add.i264.us
  %mul2.i.i.us = fmul double undef, %add4.i267.us
  store double %add.i243.us, ptr undef, align 8
  store double %add4.i246.us, ptr %agg.tmp99208.sroa.1.8.idx388, align 8
  store double %mul.i.i.us, ptr %agg.tmp101211.sroa.0.0.idx, align 8
  store double %mul2.i.i.us, ptr %agg.tmp101211.sroa.1.8.idx390, align 8
  unreachable

cond.true63.us:                                   ; preds = %cond.true48.us
  unreachable

for.body42.lr.ph.us:                              ; preds = %for.cond36.preheader
  br i1 undef, label %cond.true48.us, label %cond.false51.us

_Z5clampd.exit.1:                                 ; preds = %for.cond36.preheader
  br label %for.cond36.preheader
}


%struct.Ray.5.11.53.95.137.191.197.203.239.257.263.269.275.281.287.293.383.437.443.455.461.599.601 = type { %struct.Vec.0.6.48.90.132.186.192.198.234.252.258.264.270.276.282.288.378.432.438.450.456.594.600, %struct.Vec.0.6.48.90.132.186.192.198.234.252.258.264.270.276.282.288.378.432.438.450.456.594.600 }
%struct.Vec.0.6.48.90.132.186.192.198.234.252.258.264.270.276.282.288.378.432.438.450.456.594.600 = type { double, double, double }

define void @_Z8radianceRK3RayiPt() #0 {
; CHECK-LABEL: @_Z8radianceRK3RayiPt(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br i1 undef, label [[IF_THEN78:%.*]], label [[IF_THEN38:%.*]]
; CHECK:       if.then38:
; CHECK-NEXT:    [[AGG_TMP74663_SROA_0_0_IDX:%.*]] = getelementptr inbounds [[STRUCT_RAY_5_11_53_95_137_191_197_203_239_257_263_269_275_281_287_293_383_437_443_455_461_599_601:%.*]], ptr undef, i64 0, i32 1, i32 0
; CHECK-NEXT:    [[TMP0:%.*]] = insertelement <2 x double> <double undef, double poison>, double undef, i32 1
; CHECK-NEXT:    [[TMP1:%.*]] = fmul <2 x double> undef, [[TMP0]]
; CHECK-NEXT:    [[TMP2:%.*]] = fsub <2 x double> undef, [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = fmul <2 x double> undef, [[TMP2]]
; CHECK-NEXT:    [[TMP4:%.*]] = fmul <2 x double> undef, [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = fadd <2 x double> undef, [[TMP4]]
; CHECK-NEXT:    [[TMP6:%.*]] = fadd <2 x double> undef, [[TMP5]]
; CHECK-NEXT:    [[TMP7:%.*]] = fmul <2 x double> undef, [[TMP6]]
; CHECK-NEXT:    store <2 x double> [[TMP7]], ptr [[AGG_TMP74663_SROA_0_0_IDX]], align 8
; CHECK-NEXT:    br label [[RETURN:%.*]]
; CHECK:       if.then78:
; CHECK-NEXT:    br label [[RETURN]]
; CHECK:       return:
; CHECK-NEXT:    ret void
;
entry:
  br i1 undef, label %if.then78, label %if.then38

if.then38:                                        ; preds = %entry
  %mul.i.i790 = fmul double undef, undef
  %mul3.i.i792 = fmul double undef, undef
  %mul.i764 = fmul double undef, %mul3.i.i792
  %mul4.i767 = fmul double undef, undef
  %sub.i768 = fsub double %mul.i764, %mul4.i767
  %mul6.i770 = fmul double undef, %mul.i.i790
  %mul9.i772 = fmul double undef, %mul3.i.i792
  %sub10.i773 = fsub double %mul6.i770, %mul9.i772
  %mul.i736 = fmul double undef, %sub.i768
  %mul2.i738 = fmul double undef, %sub10.i773
  %mul.i727 = fmul double undef, %mul.i736
  %mul2.i729 = fmul double undef, %mul2.i738
  %add.i716 = fadd double undef, %mul.i727
  %add4.i719 = fadd double undef, %mul2.i729
  %add.i695 = fadd double undef, %add.i716
  %add4.i698 = fadd double undef, %add4.i719
  %mul.i.i679 = fmul double undef, %add.i695
  %mul2.i.i680 = fmul double undef, %add4.i698
  %agg.tmp74663.sroa.0.0.idx = getelementptr inbounds %struct.Ray.5.11.53.95.137.191.197.203.239.257.263.269.275.281.287.293.383.437.443.455.461.599.601, ptr undef, i64 0, i32 1, i32 0
  store double %mul.i.i679, ptr %agg.tmp74663.sroa.0.0.idx, align 8
  %agg.tmp74663.sroa.1.8.idx943 = getelementptr inbounds %struct.Ray.5.11.53.95.137.191.197.203.239.257.263.269.275.281.287.293.383.437.443.455.461.599.601, ptr undef, i64 0, i32 1, i32 1
  store double %mul2.i.i680, ptr %agg.tmp74663.sroa.1.8.idx943, align 8
  br label %return

if.then78:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %if.then78, %if.then38
  ret void
}

attributes #0 = { ssp uwtable "less-precise-fpmad"="false" "frame-pointer"="none" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
