/ *      
 [ I N F O ]    
 N A M E   =   A u t o   M a t e r i a l   R e n d e r  
 V E R S I O N   =   1 . 0 . 0  
 A U T H O R   =   M a s t a M a n  
 D E V   =   h t t p s : / / 3 d g r o u n d . n e t  
 C L I E N T   =   S h e s t a k o v i c h  
 H E L P   =    
 [ 1 . 0 . 0 ]  
 *   I n i t i a l   r e l e a s e   =  
  
 [ S C R I P T ]  
 * /  
  
 s t r u c t   ' $ '   (  
         f n   a d d   n   v   =   (  
                 r e t u r n   ( f i l e P r o p e r t i e s . a d d P r o p e r t y   # c u s t o m   n   v )  
         ) ,  
         f n   g e t   n   =   (  
                 i   =   f i l e P r o p e r t i e s . f i n d P r o p e r t y   # c u s t o m   n  
                 i f ( i   ! =   0 )   d o   (  
                         v   =   f i l e P r o p e r t i e s . g e t P r o p e r t y V a l u e   # c u s t o m   i  
                         i f ( v [ 1 ]   = =   " # " )   d o   r e t u r n   e x e c u t e ( v )  
                         r e t u r n   v  
                 )  
                 r e t u r n   u n d e f i n e d  
         ) ,  
         f n   d e l   n   =   (  
                 f i l e P r o p e r t i e s . d e l e t e P r o p e r t y   # c u s t o m   n  
         ) ,  
         f n   l i s t   t :   # f u l l   =   (  
                 p   =   f i l e P r o p e r t i e s . g e t N u m P r o p e r t i e s   # c u s t o m  
                 r e s   =   # ( )  
                 f o r   i   i n   1   t o   ( f i l e P r o p e r t i e s . g e t N u m P r o p e r t i e s   # c u s t o m )   d o   (  
                         n   =   f i l e P r o p e r t i e s . g e t P r o p e r t y N a m e   # c u s t o m   i  
                         v   =   f i l e P r o p e r t i e s . g e t P r o p e r t y V a l u e   # c u s t o m   i  
                          
                         c a s e   t   o f   (  
                                 # n a m e s :   a p p e n d   r e s   n  
                                 # v a l u e s :   a p p e n d   r e s   v  
                                 d e f a u l t :   a p p e n d   r e s   # ( n ,   v )  
                         )  
                 )  
                  
                 r e t u r n   r e s  
         )  
 )  
  
  
 t r y ( c l o s e R o l l o u t F l o a t e r   f A u t o M a t e r i a l r e n d e r )   c a t c h ( )  
 g l o b a l   f A u t o M a t e r i a l r e n d e r   =   n e w R o l l o u t F l o a t e r   " A u t o   M a t e r i a l   R e n d e r "   2 8 0   7 0 0  
  
 t r y   ( D e s t r o y D i a l o g   r A M R _ C a m e r a L i s t )   c a t c h   ( )  
 r o l l o u t   _ r S t e p A M R 0     " M a i n "   (  
 	 g l o b a l   r A M R _ C a m e r a L i s t  
 	 g l o b a l   _ _ A M R _ C A M E R A S _ L I S T   =   # ( )  
 	 g l o b a l   _ _ A M R _ M A T E R I A L S _ L I S T   =   # ( )  
 	 g l o b a l   _ _ A M R _ S c e n e C a m e r a s   =   # ( )  
 	  
 	 g r o u p   " C a m e r a s   L i s t "   ( 	  
 	 	 m u l t i l i s t b o x   l b x C a m e r a s L i s t   " "   h e i g h t :   1 2  
 	 	 b u t t o n   b t n V i e w L i s t   " S c e n e   C a m e r a s "   w i d t h :   1 0 0   a c r o s s :   2  
                 b u t t o n   b t n R e m o v e C a m e r a   " R e m o v e "   w i d t h :   1 0 0   e n a b l e d :   f a l s e  
 	 	 l a b e l   l b l C a m e r a s S t a t   " "   a l i g n :   # l e f t  
 	 )  
 	  
 	 g r o u p   " M a t e r i a l s   L i s t "   (  
 	 	 e d i t t e x t   e d t F u r F o s t f i x   " F u r   p o s t f i x : "   t e x t :   " _ f u r "  
 	 	 m u l t i l i s t b o x   l b x M a t e r i a l s L i s t   " "   h e i g h t :   1 2  
 	 	 b u t t o n   b t n A d d M a t e r i a l s   " A d d   M a t e r i a l s   + "   w i d t h :   1 0 0   a c r o s s :   2  
                 b u t t o n   b t n R e m o v e M a t e r i a l s   " R e m o v e   M a t e r i a l s "   w i d t h :   1 0 0   e n a b l e d :   f a l s e  
 	 	 l a b e l   l b l M a t e r i a l s S t a t   " "   a l i g n :   # l e f t  
 	 )  
 	  
 	 g r o u p   " S a v e   O u t p u t   R e n d e r s "   (  
                 e d i t t e x t   e d t B a t c h R e n d e r P a t h   " "   r e a d o n l y :   t r u e   a c r o s s :   2   a l i g n :   # l e f t   f i e l d w i d t h :   1 9 5  
                 b u t t o n   b t n S e t B a t c h R e n d e r P a t h   " . . . "   w i d t h :   3 5     a l i g n :   # r i g h t   o f f s e t :   [ 0 ,   - 3 ]  
         )  
 	  
 	 b u t t o n   b t n S t a r t R e n d e r   " S t a r t   B a t c h   R e n d e r "   h e i g h t :   3 5   w i d t h :   2 4 0   o f f s e t :   [ 0 ,   1 0 ]  
 	  
 	 f n   i s S u p p o r t e d R e n d e r   =   (  
                 r   =   r e n d e r e r s . c u r r e n t  
 	 	  
 	 	 i f   m a t c h p a t t e r n   ( r   a s   s t r i n g )   p a t t e r n : " * C o r o n a * "   d o   r e t u r n   # ( r ,   " c o r o n a " ,   " C o r o n a " )  
 	 	 i f   m a t c h p a t t e r n   ( r   a s   s t r i n g )   p a t t e r n : " * V _ R a y * "   d o   r e t u r n   # ( r ,   " v r a y " ,   " V R a y " )  
 	 	          
                 r e t u r n   u n d e f i n e d  
         )  
 	  
 	 f n   g e t S a v e D i r   t y p e :   " p n g "   =   (  
                 t y p e   =   ( t o U p p e r   t y p e )   + "   ( * . "   +   t y p e   +   " ) | * . "   +   t y p e  
                 f   =   g e t S a v e F i l e N a m e   f i l e n a m e :   " D O   N O T   C H A N G E   N A M E "   c a p t i o n : " S a v e   F i l e "   t y p e s :   t y p e  
                 i f ( f   = =   u n d e f i n e d )   d o   r e t u r n   f  
                  
                 p   =   g e t F i l e N a m e P a t h   f  
 	 	  
                 r e t u r n   p  
         )  
 	  
 	 f n   s e t u p R e n d e r   f i l e N a m e   i s S e l e c t e d M o d e :   f a l s e   =   (  
 	 	 l o c a l   r   =   i s S u p p o r t e d R e n d e r ( )  
 	 	  
 	 	 d e l e t e F i l e   f i l e N a m e  
 	 	  
 	 	 i f ( r e n d e r S c e n e D i a l o g . i s O p e n ( ) )   d o   r e n d e r S c e n e D i a l o g . c l o s e ( )   	 	  
 	 	  
 	 	 r e n d S a v e F i l e   =   t r u e  
 	 	 r e n d O u t p u t F i l e n a m e   =   f i l e N a m e  
 	 	 r e n d T i m e T y p e   =   1  
 	 	 r e n d S a v e F i l e   =   o n  
 	 	  
 	 	 c a s e   r [ 2 ]   o f   (  
 	 	 	 " c o r o n a " :   (  
 	 	 	 	 r [ 1 ] . r e n d e r S e l e c t e d _ m o d e   =   i f ( i s S e l e c t e d M o d e )   t h e n   1   e l s e   0  
 	 	 	 	 r [ 1 ] . v f b _ c l e a r B e t w e e n R e n d e r s   =   t r u e  
 	 	 	 )  
 	 	 	 " v r a y " :   (  
 	 	 	 	 v r a y V F B S e t R e g i o n E n a b l e d   f a l s e  
 	 	 	 	 r [ 1 ] . s y s t e m _ p r e v i o u s R e n d e r   =   5  
 	 	 	 	 r [ 1 ] . i m a g e S a m p l e r _ r e n d e r M a s k _ t y p e   =   i f ( i s S e l e c t e d M o d e )   t h e n   2   e l s e   0  
 	 	 	 	 t r y   ( v f b c o n t r o l   # t e s t r e s o l u t i o n   f a l s e )   c a t c h ( )  
 	 	 	 	  
 	 	 	 	 r [ 1 ] . o u t p u t _ o n   =   t r u e  
 	 	 	 	 r [ 1 ] . o u t p u t _ u s e r a m   =   t r u e  
 	 	 	 	 r [ 1 ] . o u t p u t _ s a v e R a w F i l e   =   f a l s e  
 	 	 	 	 r [ 1 ] . o u t p u t _ s p l i t g b u f f e r   =   t r u e  
 	 	 	 	 r [ 1 ] . o u t p u t _ s p l i t R G B   =   t r u e  
 	 	 	 	 r [ 1 ] . o u t p u t _ s p l i t A l p h a   =   t r u e  
 	 	 	 	 r [ 1 ] . o u t p u t _ g e n p r e v i e w   =   t r u e  
 	 	 	 )  
 	 	 )  
 	 	 	  
 	 	 r e M g r   =   m a x O p s . g e t C u r R e n d e r E l e m e n t M g r ( )  
 	 	 r e M g r . S e t E l e m e n t s A c t i v e   f a l s e  
 	 	  
 	 	 r e n d e r S c e n e D i a l o g . c o m m i t ( )  
 	 	 r e n d e r S c e n e D i a l o g . u p d a t e ( )  
 	 )  
 	  
 	 f n   s e t C a m e r a L i s t P o s   =   (  
 	 	 i f   ( r A M R _ C a m e r a L i s t   = =   u n d e f i n e d )   d o   r e t u r n   f a l s e  
 	 	  
 	 	 l o c a l   f l o a t e r P o s   =   f A u t o M a t e r i a l r e n d e r . p o s  
 	 	 l o c a l   f l o a t e r S i z e   =   f A u t o M a t e r i a l r e n d e r . s i z e  
 	 	 f l o a t e r P o s . x   + =   f l o a t e r S i z e . x   +   1 0  
 	 	  
 	 	 S e t D i a l o g P o s   r A M R _ C a m e r a L i s t   f l o a t e r P o s  
 	 )  
 	  
 	 f n   c h e c k I s U I A v a i l a b l e   =   (  
 	 	 l o c a l   s   =   l b x C a m e r a s L i s t . s e l e c t i o n   a s   a r r a y 	 	 	 	  
 	 	 l o c a l   i   =   s . c o u n t  
 	 	 b t n R e m o v e C a m e r a . e n a b l e d   =   i   >   0  
 	 )  
 	  
 	 f n   u p d a t e C a m e r a L i s t   =   (  
 	 	 _ r S t e p A M R 0 . l b x C a m e r a s L i s t . i t e m s   =   f o r   c   i n   : : _ _ A M R _ C A M E R A S _ L I S T   c o l l e c t   c . n a m e 	 	  
 	 	 t r y   ( r A M R _ C a m e r a L i s t . u p d a t e C a m e r a L i s t ( ) )   c a t c h ( )  
 	 	 t r y ( _ r S t e p A M R 0 . l b x C a m e r a s L i s t . s e l e c t i o n   =   # { } )   c a t c h ( )  
 	 	 l o c a l   t o t a l   =   0 	  
 	 	  
 	 	 f o r   c   i n   c a m e r a s   w h e r e   c l a s s O f   c   ! =   T a r g e t o b j e c t   d o   (  
 	 	 	 l o c a l   i s L i s t e d   =   f i n d I t e m   : : _ _ A M R _ C A M E R A S _ L I S T   c   ! =   0  
 	 	 	 s e t U s e r P r o p   c   " i n L i s t "   i s L i s t e d  
 	 	 	 i f   ( i s L i s t e d )   d o   t o t a l   + =   1  
 	 	 )  
 	 	  
 	 	 l b l C a m e r a s S t a t . c a p t i o n   =   " C a m e r a s   i n   l i s t :   "   +   ( t o t a l   a s   s t r i n g )  
 	 )  
 	  
 	 f n   g a t h e r L i s t e d C a m e r a s   =   (  
 	 	 f o r   c   i n   c a m e r a s   w h e r e   c l a s s O f   c   ! =   T a r g e t o b j e c t   d o   (  
 	 	 	 l o c a l   i s L i s t e d   =   g e t U s e r P r o p   c   " i n L i s t "  
 	 	 	 i f   ( i s L i s t e d   ! =   t r u e )   d o   c o n t i n u e  
 	 	 	 a p p e n d I f U n i q u e   : : _ _ A M R _ C A M E R A S _ L I S T   c  
 	 	 ) 	  
 	 )  
 	  
 	 f n   r e m o v e C a m e r a s F r o m L i s t   =   (  
 	 	 l o c a l   s   =   l b x C a m e r a s L i s t . s e l e c t i o n   a s   a r r a y  
 	 	 i f   ( s . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   s e l e c t   i t e m s   f r o m   l i s t ! "   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 s o r t   s  
 	 	  
 	 	 f o r   i   i n   s . c o u n t   t o   1   b y   - 1   d o   (  
 	 	 	 l o c a l   i i   =   s [ i ]  
 	 	 	 d e l e t e I t e m   : : _ _ A M R _ C A M E R A S _ L I S T   i i 	 	 	  
 	 	 )  
 	 	  
 	 	 u p d a t e C a m e r a L i s t ( )  
 	 )  
 	  
 	 f n   s h o w A d d C a m e r a L i s t   =   (  
 	 	 t r y   ( D e s t r o y D i a l o g   r A M R _ C a m e r a L i s t )   c a t c h   ( )  
 	 	 _ r S t e p A M R 0 . b t n V i e w L i s t . e n a b l e d   =   f a l s e  
 	 	 _ r S t e p A M R 0 . u p d a t e C a m e r a L i s t ( )  
 	 	  
 	 	 r o l l o u t   r A M R _ C a m e r a L i s t   " A d d   C a m e r a s "   (  
 	 	 	 g r o u p   " S c e n e   C a m e r a s "   (  
 	 	 	 	 m u l t i L i s t B o x   l b x A v a i l a b l e C a m e r a s L i s t   " "   h e i g h t :   1 6  
 	 	 	 	 b u t t o n   b t n A d d C a m e r a s T o G l o b a l L i s t   " A d d   C a m e r a s "   w i d t h :   2 5 5   e n a b l e d :   f a l s e  
 	 	 	 )  
 	 	 	  
 	 	 	 b u t t o n   b t n C l o s e   " C l o s e "   w i d t h :   2 5 5   o f f s e t :   [ 0 ,   1 0 ]  
 	 	 	  
 	 	 	 f n   c h e c k A d d C a m e r a s T o G l o b a l L i s t   =   (  
 	 	 	 	 l o c a l   s   =   l b x A v a i l a b l e C a m e r a s L i s t . s e l e c t i o n   a s   a r r a y 	 	 	 	  
 	 	 	 	 l o c a l   i   =   s . c o u n t  
 	 	 	 	  
 	 	 	 	 b t n A d d C a m e r a s T o G l o b a l L i s t . e n a b l e d   =   i   >   0  
 	 	 	 )  
 	 	 	  
 	 	 	 f n   g e t C a m e r a s L i s t   =   (  
 	 	 	 	 l o c a l   o   =   # ( )  
 	 	 	 	 f o r   c   i n   c a m e r a s   w h e r e   c l a s s O f   c   ! =   T a r g e t o b j e c t   d o   (  
 	 	 	 	 	 i f   ( f i n d I t e m   _ _ A M R _ C A M E R A S _ L I S T   c   ! =   0 )   d o   c o n t i n u e  
 	 	 	 	 	 a p p e n d   o   c  
 	 	 	 	 )  
 	 	 	 	  
 	 	 	 	 r e t u r n   o  
 	 	 	 )  
 	 	 	  
 	 	 	 f n   u p d a t e C a m e r a L i s t   =   (  
 	 	 	 	 : : _ _ A M R _ S c e n e C a m e r a s   =   g e t C a m e r a s L i s t ( )  
 	 	 	 	  
 	 	 	 	 l b x A v a i l a b l e C a m e r a s L i s t . i t e m s   =   f o r   c   i n   : : _ _ A M R _ S c e n e C a m e r a s   c o l l e c t   c . n a m e  
 	 	 	 	  
 	 	 	 	 c h e c k A d d C a m e r a s T o G l o b a l L i s t ( )  
 	 	 	 )  
 	 	 	  
 	 	 	 o n   r A M R _ C a m e r a L i s t   o p e n   d o   (  
 	 	 	 	 u p d a t e C a m e r a L i s t ( )  
 	 	 	 )  
 	 	 	  
 	 	 	 o n   r A M R _ C a m e r a L i s t   c l o s e   d o   (  
 	 	 	 	 : : r A M R _ C a m e r a L i s t   =   u n d e f i n e d  
 	 	 	 	 _ r S t e p A M R 0 . b t n V i e w L i s t . e n a b l e d   =   t r u e  
 	 	 	 )  
 	 	 	  
 	 	 	 o n   l b x A v a i l a b l e C a m e r a s L i s t   s e l e c t i o n E n d   d o   (  
 	 	 	 	 c h e c k A d d C a m e r a s T o G l o b a l L i s t ( )  
 	 	 	 )  
 	 	 	  
 	 	 	 o n   b t n C l o s e   p r e s s e d   d o   (  
 	 	 	 	 t r y   ( D e s t r o y D i a l o g   r A M R _ C a m e r a L i s t )   c a t c h   ( )  
 	 	 	 )  
 	 	 	  
 	 	 	 o n   b t n A d d C a m e r a s T o G l o b a l L i s t   p r e s s e d   d o   (  
 	 	 	 	 l o c a l   s   =   l b x A v a i l a b l e C a m e r a s L i s t . s e l e c t i o n   a s   a r r a y  
 	 	 	 	 i f   ( s . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   s e l e c t   i t e m s   f r o m   l i s t ! "   t i t l e :   " E r r o r ! "  
 	 	 	 	  
 	 	 	 	 f o r   i   i n   s   d o   (  
 	 	 	 	 	 l o c a l   c   =   : : _ _ A M R _ S c e n e C a m e r a s [ i ]  
 	 	 	 	 	  
 	 	 	 	 	 a p p e n d I f U n i q u e   : : _ _ A M R _ C A M E R A S _ L I S T   c  
 	 	 	 	 )  
 	 	 	 	  
 	 	 	 	 t r y ( l b x A v a i l a b l e C a m e r a s L i s t . s e l e c t i o n   =   # { } )   c a t c h ( )  
 	 	 	 	 _ r S t e p A M R 0 . u p d a t e C a m e r a L i s t ( )  
 	 	 	 	 c h e c k A d d C a m e r a s T o G l o b a l L i s t ( ) 	 	 	 	  
 	 	 	 )  
 	 	 )  
 	 	  
 	 	 c r e a t e D i a l o g   r A M R _ C a m e r a L i s t   2 8 0   3 2 0  
 	 	 s e t C a m e r a L i s t P o s ( )  
 	 )  
 	  
 	 f n   c h e c k R e m o v e M a t e r i a l s B u t t o n   =   (  
 	 	 l o c a l   s   =   l b x M a t e r i a l s L i s t . s e l e c t i o n   a s   a r r a y 	 	 	 	  
 	 	 l o c a l   i   =   s . c o u n t  
 	 	  
 	 	 b t n R e m o v e M a t e r i a l s . e n a b l e d   =   i   >   0  
 	 )  
 	  
 	 f n   u p d a t e M a t e r i a l L i s t   =   (  
 	 	 l o c a l   t o t a l   =   0  
 	 	 l o c a l   m i s s i n g F u r   =   0  
 	 	  
 	 	 l o c a l   o   =   # ( )  
 	 	 f o r   i   i n   : : _ _ A M R _ M A T E R I A L S _ L I S T   d o   (  
 	 	 	 l o c a l   m   =   i [ 1 ]  
 	 	 	 l o c a l   f   =   i [ 2 ]  
 	 	 	  
 	 	 	 f u r N a m e   =   " N o t   f o u n d ! "  
 	 	 	 i f   ( f   ! =   u n d e f i n e d )   t h e n   (  
 	 	 	 	 f u r N a m e   =   f . n a m e  
 	 	 	 )   e l s e   (  
 	 	 	 	 m i s s i n g F u r   + =   1  
 	 	 	 )  
 	 	 	 a p p e n d   o   ( m . n a m e   +   "   ( "   +   f u r N a m e   +   " ) " )  
 	 	 	  
 	 	 	 t o t a l   + =   1  
 	 	 )  
 	 	  
 	 	 l b x M a t e r i a l s L i s t . i t e m s   =   o  
 	 	  
 	 	 l o c a l   s t a t   =   " M a t e r i a l s   i n   l i s t :   "   +   ( t o t a l   a s   s t r i n g )  
 	 	 i f   ( m i s s i n g F u r   >   0 )   d o   s t a t   + =   "   |   M i s s i n g   F u r   M a t e r i a l s :   "   +   ( m i s s i n g F u r   a s   s t r i n g )  
 	 	 l b l M a t e r i a l s S t a t . c a p t i o n   =   s t a t  
 	 	  
 	 	 c h e c k R e m o v e M a t e r i a l s B u t t o n ( )  
 	 	  
 	 	 r e t u r n   # ( t o t a l ,   m i s s i n g F u r )  
 	 )  
 	  
 	 f n   g a t h e r L i s t e d M a t e r i a l s   =   (  
 	 	 l o c a l   p o s t f i x   =   e d t F u r F o s t f i x . t e x t  
 	 	 l o c a l   o   =   # ( )  
 	 	 f o r   i   i n   o b j e c t s   w h e r e   ( c l a s s O f   i   = =   S p h e r e   a n d   i . m a t e r i a l   ! =   u n d e f i n e d )   d o   (  
 	 	 	 l o c a l   i s L i s t e d   =   g e t U s e r P r o p   i   " i n L i s t "  
 	 	 	 i f   ( i s L i s t e d   ! =   t r u e )   d o   c o n t i n u e  
 	 	 	  
 	 	 	 l o c a l   f   =   g e t N o d e B y N a m e   ( i . n a m e   +   p o s t f i x )   e x a c t :   t r u e   i g n o r e C a s e :   t r u e  
 	 	 	  
 	 	 	 l o c a l   m   =   # ( i ,   f )  
 	 	 	  
 	 	 	 a p p e n d   o   m  
 	 	 )  
 	 	  
 	 	 : : _ _ A M R _ M A T E R I A L S _ L I S T   =   o  
 	 	  
 	 	 u p d a t e M a t e r i a l L i s t ( )  
 	 )  
 	  
 	 f n   a d d M a t e r i a l s   =   ( 	 	  
 	 	 l o c a l   m   =   " P l e a s e   s e l e c t   S p h e r e s   w i t h   M a t e r i a l s   f r o m   t h e   s c e n e ! \ n F u r   M a t e r i a l   w i l l   b e   a d d e d   a u t o m a t i c a l l y ! "  
 	 	 i f   ( s e l e c t i o n . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   m   t i t l e :   " W a r n i n g ! "  
 	 	 l o c a l   o   =   # ( )  
 	 	  
 	 	 f o r   i   i n   s e l e c t i o n   w h e r e   ( c l a s s O f   i   = =   S p h e r e   a n d   i . m a t e r i a l   ! =   u n d e f i n e d )   d o   (  
 	 	 	 i f   ( M a t c h P a t t e r n   i . n a m e   p a t t e r n :   ( " * "   +   e d t F u r F o s t f i x . t e x t ) )   d o   c o n t i n u e  
 	 	 	 a p p e n d   o   i  
 	 	 	 s e t U s e r P r o p   i   " i n L i s t "   t r u e  
 	 	 )  
 	 	  
 	 	 i f   ( o . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   m   t i t l e :   " W a r n i n g ! "  
 	 	  
 	 	 g a t h e r L i s t e d M a t e r i a l s ( )  
 	 )  
 	  
 	 f n   r e m o v e M a t e r i a l s   =   (  
 	 	 l o c a l   s   =   l b x M a t e r i a l s L i s t . s e l e c t i o n   a s   a r r a y  
 	 	 i f   ( s . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   s e l e c t   i t e m s   f r o m   l i s t ! "   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 s o r t   s  
 	 	  
 	 	 f o r   i   i n   s . c o u n t   t o   1   b y   - 1   d o   (  
 	 	 	 l o c a l   i i   =   s [ i ]  
 	 	 	 l o c a l   o   =   : : _ _ A M R _ M A T E R I A L S _ L I S T [ i i ] [ 1 ]  
 	 	 	 s e t U s e r P r o p   o   " i n L i s t "   f a l s e  
 	 	 	  
 	 	 	 d e l e t e I t e m   : : _ _ A M R _ M A T E R I A L S _ L I S T   i i 	 	 	  
 	 	 )  
 	 	  
 	 	 t r y ( l b x M a t e r i a l s L i s t . s e l e c t i o n   =   # { } )   c a t c h ( )  
 	 	 u p d a t e M a t e r i a l L i s t ( )  
 	 )  
 	  
 	   f n   l o a d S e t t i n g s   =   (  
                 l o c a l   s   =   ' $ ' ( )  
                  
                 l o c a l   p 2   =   s . g e t   " O U T _ R E N D E R _ P A T H "  
                 i f ( p 2   ! =   u n d e f i n e d   a n d   d o e s F i l e E x i s t   p 2 )   d o   e d t B a t c h R e n d e r P a t h . t e x t   =   p 2  
         )  
 	  
 	 o n   l b x C a m e r a s L i s t   s e l e c t i o n E n d   d o   (  
 	 	 c h e c k I s U I A v a i l a b l e ( )  
 	 )  
 	  
 	 o n   b t n V i e w L i s t   p r e s s e d   d o   (  
 	 	 s h o w A d d C a m e r a L i s t ( )  
 	 )  
 	  
 	 o n   b t n R e m o v e C a m e r a   p r e s s e d   d o   (  
 	 	 r e m o v e C a m e r a s F r o m L i s t ( )  
 	 )  
 	  
 	 o n   _ r S t e p A M R 0   m o v e d   p   d o   (  
 	 	 s e t C a m e r a L i s t P o s ( )  
 	 )  
 	 	  
 	 o n   _ r S t e p A M R 0   c l o s e   d o   (  
 	 	 t r y   ( D e s t r o y D i a l o g   r A M R _ C a m e r a L i s t )   c a t c h   ( )  
 	 )  
 	  
 	 o n   _ r S t e p A M R 0   o p e n   d o   (  
 	 	 t r y   ( D e s t r o y D i a l o g   r A M R _ C a m e r a L i s t )   c a t c h   ( )  
 	 	  
 	 	 g a t h e r L i s t e d C a m e r a s ( )  
 	 	 u p d a t e C a m e r a L i s t ( )  
 	 	  
 	 	 g a t h e r L i s t e d M a t e r i a l s ( )  
 	 	  
 	 	 l o a d S e t t i n g s ( )  
 	 )  
 	  
 	 o n   b t n A d d M a t e r i a l s   p r e s s e d   d o   (  
 	 	 a d d M a t e r i a l s ( )  
 	 )  
 	  
 	 o n   b t n R e m o v e M a t e r i a l s   p r e s s e d   d o   (  
 	 	 r e m o v e M a t e r i a l s ( )  
 	 )  
 	  
 	 o n   l b x M a t e r i a l s L i s t   s e l e c t i o n E n d   d o   (  
 	 	 c h e c k R e m o v e M a t e r i a l s B u t t o n ( )  
 	 )  
 	  
 	 o n   b t n S e t B a t c h R e n d e r P a t h   p r e s s e d   d o   (  
 	 	 l o c a l   p   =   g e t S a v e D i r   t y p e :   " p n g "  
                 i f ( p   = =   u n d e f i n e d )   d o   r e t u r n   f a l s e  
                  
                 ( ' $ ' ) . a d d   " O U T _ R E N D E R _ P A T H "   p  
 	 	 e d t B a t c h R e n d e r P a t h . t e x t   =   p  
 	 )  
 	  
 	 f n   g e t O b j e c t s   =   (  
 	 	 l o c a l   o b j s   =   # ( )  
 	 	 l o c a l   f u r s   =   # ( )  
 	 	 f o r   i   i n   o b j e c t s   w h e r e   ( c l a s s O f   i   = =   V R a y F u r   a n d   i . s o u r c e N o d e   ! =   u n d e f i n e d )   d o   (  
 	 	 	 a p p e n d I f U n i q u e   o b j s   i . s o u r c e N o d e  
 	 	 	 a p p e n d I f U n i q u e   f u r s   i  
 	 	 )  
 	 	  
 	 	 r e t u r n   # ( o b j s ,   f u r s )  
 	 )  
 	  
 	 o n   b t n S t a r t R e n d e r   p r e s s e d   d o   (  
 	 	 l o c a l   c r   =   i s S u p p o r t e d R e n d e r ( )  
                 i f ( c r   = =   u n d e f i n e d )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   a s s i g n   C o r o n a   o r   V R a y   R e n d e r e r ! "   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 l o c a l   d a t a   =   g e t O b j e c t s ( )  
 	 	 l o c a l   o b j s   =   d a t a [ 1 ]  
 	 	 l o c a l   f u r s   =   d a t a [ 2 ]  
 	 	  
 	 	 i f   ( f u r s . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   " N o t   f o u n d   V R a y F u r   o b j e c t s   i n   s c e n e ! "   t i t l e :   " E r r o r ! "  
 	 	 i f   ( o b j s . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   " N o t   f o u n d   o b j e c t s   w i t h   a s s i g n e d   V R a y F u r ! "   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 c h e c k F o r S a v e ( )  
 	 	  
 	 	 l o c a l   s   =   ( ' $ ' )  
                 l o c a l   p 2   =   s . g e t   " O U T _ R E N D E R _ P A T H "  
 	 	 i f ( p 2   = =   u n d e f i n e d   o r   n o t   d o e s F i l e E x i s t   p 2 )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   c h o o s e   S a v e   O u t p u t   R e n d e r   P a t h "   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 i f   ( : : _ _ A M R _ C A M E R A S _ L I S T . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   a d d   C a m e r a s   f i r s t ! "   t i t l e :   " E r r o r ! "  
 	 	 i f   ( : : _ _ A M R _ M A T E R I A L S _ L I S T . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   a d d   M a t e r i a l s   f i r s t ! "   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 l o c a l   s t a t   =   u p d a t e M a t e r i a l L i s t ( )  
 	 	  
 	 	 i f   ( s t a t [ 2 ]   >   0 )   d o   (  
 	 	 	 l o c a l   q   =   q u e r y B o x   " F o u n d   c o m b i n a t i o n s   w i t h   m i s s i n g   F u r   M a t e r i a l ! \ n D o   y o u   w a n t   t o   p r o c e e d ? "   t i t l e :   " W a r n i n g ! "  
 	 	 	 i f   ( n o t   q )   d o   r e t u r n   f a l s e  
 	 	 )  
 	 	  
 	 	 p r o g r e s s S t a r t   " I n   p r o c e s s . . . "  
 	 	 e s c a p e E n a b l e   =   t r u e  
 	 	 c l e a r L i s t e n e r ( )  
 	 	  
 	 	 f o r   i   i n   1   t o   : : _ _ A M R _ C A M E R A S _ L I S T . c o u n t   d o   (  
 	 	 	 l o c a l   c   =   : : _ _ A M R _ C A M E R A S _ L I S T [ i ]  
 	 	 	  
 	 	 	 v i e w p o r t . s e t C a m e r a   c  
 	 	 	  
 	 	 	 f o r   m   i n   _ _ A M R _ M A T E R I A L S _ L I S T   d o   (  
 	 	 	 	  
 	 	 	 	 l o c a l   f i l e n a m e   =   p 2   +   c . n a m e   +   " _ "   +   m [ 1 ] . n a m e   +   " . p n g "  
 	 	 	 	  
 	 	 	 	 s e t u p R e n d e r   f i l e n a m e  
 	 	 	 	  
 	 	 	 	 f o r   o o   i n   o b j s   d o   o o . m a t e r i a l   =   m [ 1 ] . m a t e r i a l  
 	 	 	 	 i f   ( m [ 2 ]   ! =   u n d e f i n e d )   d o   f o r   f f   i n   f u r s   d o   f f . m a t e r i a l   =   m [ 2 ] . m a t e r i a l  
 	 	 	 	  
 	 	 	 	 p r i n t   ( " R e n d e r   t h e   "   +   f i l e n a m e )  
 	 	 	 	  
 	 	 	 	 m a x   q u i c k   r e n d e r  
 	 	 	 	  
 	 	 	 	 i f   ( g e t P r o g r e s s C a n c e l ( )   o r   k e y b o a r d . e s c P r e s s e d )   d o   (  
 	 	 	 	 	 p r o g r e s s E n d ( )  
 	 	 	 	 	 r e t u r n   f a l s e  
 	 	 	 	 )  
 	 	 	 )  
 	 	 	  
 	 	 	 p r o g r e s s U p d a t e   ( 1 0 0   *   i   /   : : _ _ A M R _ C A M E R A S _ L I S T . c o u n t )  
 	 	 )  
 	 	  
 	 	 p r o g r e s s E n d ( )  
 	 	  
 	 	 l o c a l   q   =   q u e r y B o x   " A l l   c o m b i n a t i o n s   a r e   r e n d e r e d . \ n \ n D o   y o u   w a n t   t o   o p e n   t h e   f o l d e r   w i t h   r e n d e r s ? "   t i t l e :   " C o n f i r m ! " 	 	 	  
 	 	 i f ( q )   d o   r e t u r n     s h e l l L a u n c h   p 2   " "  
 	 )  
 )  
  
 r o l l o u t   _ r A b o u t A M R   " A b o u t "   (  
         l a b e l   l b l N a m e   " "    
         l a b e l   l b l V e r   " "    
          
         l a b e l   l b l A u t h o r   " "   h e i g h t :   3 0  
         h y p e r l i n k   l b l C o p y   " "     a l i g n :   # c e n t e r  
          
         f n   g e t S c r i p t I n f o   s   r e l e a s e I n f o :   " "   =     (  
                 i f ( r e l e a s e I n f o   ! =   " " )   d o   (  
                         r   =   g e t I N I S e t t i n g   s   r e l e a s e I n f o  
                         r e t u r n   r  
                 )  
  
                 l o c a l   v   =   g e t I N I S e t t i n g   s   " I N F O "   " V E R S I O N "  
                 l o c a l   a   =   g e t I N I S e t t i n g   s   " I N F O "   " A U T H O R "  
                 l o c a l   n   =   g e t I N I S e t t i n g   s   " I N F O "   " N A M E "  
                 l o c a l   o   =   g e t I N I S e t t i n g   s   " A B O U T "  
                 l o c a l   c   =   g e t I N I S e t t i n g   s   " I N F O "   " D E V "  
                 l o c a l   h   =   g e t I N I S e t t i n g   s   " I N F O "   " H E L P "  
                  
                 l o c a l     r   =   f o r   i   i n   ( g e t I N I S e t t i n g   s )   w h e r e   ( i   ! =   " A B O U T "   a n d   i   ! =   " S C R I P T "   a n d   i   ! =   " C O P Y " )   c o l l e c t   i  
                  
                 r e t u r n   # ( n ,   a ,   v ,   o ,   r ,   c ,   h )  
         )  
  
         o n   _ r A b o u t A M R   o p e n   d o  
         (  
                 i   =   g e t S c r i p t I n f o   ( g e t T h i s S c r i p t F i l e n a m e ( ) )  
                          
                 l b l N a m e . c a p t i o n   =   i [ 1 ]  
                 l b l A u t h o r . c a p t i o n   =   i [ 2 ]  
                 l b l V e r . c a p t i o n   =   i [ 3 ]  
                 l b l C o p y . a d d r e s s     =   l b l C o p y . c a p t i o n   =   i [ 6 ]  
         )  
 )  
  
 a d d R o l l o u t   _ r S t e p A M R 0   f A u t o M a t e r i a l r e n d e r   r o l l e d U p : f a l s e  
 a d d R o l l o u t   _ r A b o u t A M R   f A u t o M a t e r i a l r e n d e r   r o l l e d U p : t r u e   