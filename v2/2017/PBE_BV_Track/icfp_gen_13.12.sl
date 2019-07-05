(set-logic BV)
(define-fun shr1 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun shr4 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shr16 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun shl1 ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun if0 ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (shl1 Start) (shr1 Start) (shr4 Start) (shr16 Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (if0 Start Start Start)))))
(constraint (= (f #xAA4D4BF32F249246) #x549A97E65E49248C))
(constraint (= (f #xDC62CFCB423634AE) #xB8C59F96846C695C))
(constraint (= (f #x4F389408EC173996) #x9E712811D82E732C))
(constraint (= (f #xCFE621E4E7E2E1C0) #x9FCC43C9CFC5C380))
(constraint (= (f #x3540CBBD6BD70FDE) #x6A81977AD7AE1FBC))
(constraint (= (f #xFFFFFFFFFFFFFFF8) #xFFFFFFFFFFFFFFF0))
(constraint (= (f #xFFFFFFFFFFFFFFFA) #xFFFFFFFFFFFFFFF4))
(constraint (= (f #x0000000000034736) #x0000000000000004))
(constraint (= (f #x0000000000036C1C) #x0000000000000000))
(constraint (= (f #x00000000000202FA) #x0000000000000004))
(constraint (= (f #x00000000000232C4) #x0000000000000000))
(constraint (= (f #x000000000002FD32) #x0000000000000004))
(constraint (= (f #xFF497EFD57109301) #xFF497EFD57109301))
(constraint (= (f #x2B41EA2C27E7BB75) #x2B41EA2C27E7BB75))
(constraint (= (f #x467725175E832AF7) #x467725175E832AF7))
(constraint (= (f #x1955227ACD508647) #x1955227ACD508647))
(constraint (= (f #x5929ABF0E0D4933F) #x5929ABF0E0D4933F))
(constraint (= (f #xFFFFFFFFFFFFFFF9) #xFFFFFFFFFFFFFFF9))
(constraint (= (f #xFFFFFFFFFFFFFFFB) #xFFFFFFFFFFFFFFFB))
(constraint (= (f #x000000000003B015) #x000000000003B015))
(constraint (= (f #x0000000000030A0D) #x0000000000030A0D))
(constraint (= (f #x000000000002D12D) #x000000000002D12D))
(constraint (= (f #x000000000003B865) #x000000000003B865))
(constraint (= (f #x00000000000243C9) #x00000000000243C9))
(constraint (= (f #x7C28B9B668C33370) #xF851736CD18666E0))
(constraint (= (f #xEB04BC68D9C304F8) #xD60978D1B38609F0))
(constraint (= (f #x72E392D3C62DE761) #x72E392D3C62DE761))
(constraint (= (f #x89B35B3B86E2F38A) #x1366B6770DC5E714))
(constraint (= (f #x6DAF95CE22D71F76) #xDB5F2B9C45AE3EEC))
(constraint (= (f #xC4F1FB882A47D298) #x89E3F710548FA530))
(constraint (= (f #xD8D26746D36CE695) #xD8D26746D36CE695))
(constraint (= (f #xFFED6C56696A9EC5) #xFFED6C56696A9EC5))
(constraint (= (f #x7FB6F0A196175E4F) #x7FB6F0A196175E4F))
(constraint (= (f #x4B348B6CE7067D5B) #x4B348B6CE7067D5B))
(constraint (= (f #x00000000000366B6) #x0000000000000004))
(constraint (= (f #x00000000000222A8) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFFB) #xFFFFFFFFFFFFFFFB))
(constraint (= (f #xFFFFFFFFFFFFFFFA) #xFFFFFFFFFFFFFFF4))
(constraint (= (f #x0000000000025C25) #x0000000000025C25))
(check-synth)