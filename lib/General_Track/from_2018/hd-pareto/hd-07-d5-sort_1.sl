; constraint : w2 < 4.0
; constraint : w1 < 1.0
; constraint : w1 > 0.0
  ( set-logic BV )
  ( define-fun hd07  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 )  ( bvand     ( bvnot    x )  ( bvadd     x   #x00000001 ) ) )
( synth-fun f  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 ) (
	(Start  ( BitVec 32 ) (		#x00000001
		#x00000000
		#xffffffff
		x
		(bvnot NT1)
		(bvneg NT1)
		(bvmul NT1 NT1)
		(bvxor NT1 NT1)
		(bvor NT1 NT1)
		(bvadd NT1 NT1)
		(bvsub NT1 NT1)
		(bvudiv NT1 NT1)
		(bvurem NT1 NT1)
		(bvsrem NT1 NT1)
		(bvlshr NT1 NT1)
		(bvashr NT1 NT1)
		(bvshl NT1 NT1)
		(bvsdiv NT1 NT1)
))
	(NT1  ( BitVec 32 ) (		#x00000001
		#x00000000
		#xffffffff
		x
		(bvnot NT1)
		(bvneg NT1)
		(bvmul NT1 NT1)
		(bvxor NT1 NT1)
		(bvor NT1 NT1)
		(bvadd NT1 NT1)
		(bvsub NT1 NT1)
		(bvudiv NT1 NT1)
		(bvurem NT1 NT1)
		(bvsrem NT1 NT1)
		(bvlshr NT1 NT1)
		(bvashr NT1 NT1)
		(bvshl NT1 NT1)
		(bvsdiv NT1 NT1)
))
))
  ( declare-var x  ( BitVec 32 ) )
  ( constraint  ( =     ( hd07    x )  ( f    x ) ) )
  ( check-synth )
