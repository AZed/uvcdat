/* ---------- This file is auto-generated by setup.py  ------------- */
/* ---------- settings to change are in CMakeLists.txt ------------- */

%typemap(in) pVisusGroup
{
  if (! inSPVisusGroup( $input, $1 ))
    SWIG_fail; 
}
%typemap(in) const pVisusGroup &
{
  if (! inSPVisusGroup( $input, (* $1) ))
    SWIG_fail; 
}

%typemap(typecheck) pVisusGroup
{
  checkSPVisusGroup ($input, $1 );
}
%typemap(typecheck) const pVisusGroup &
{
  checkSPVisusGroup ($input, $1 );
}

%typemap(in) pVisusConsumer
{
  if (! inSPVisusConsumer( $input, $1 ))
    SWIG_fail; 
}
%typemap(in) const pVisusConsumer &
{
  if (! inSPVisusConsumer( $input, (* $1) ))
    SWIG_fail; 
}

%typemap(typecheck) pVisusConsumer
{
  checkSPVisusConsumer ($input, $1 );
}
%typemap(typecheck) const pVisusConsumer &
{
  checkSPVisusConsumer ($input, $1 );
}

%typemap(in) pVisusProducer
{
  if (! inSPVisusProducer( $input, $1 ))
    SWIG_fail; 
}
%typemap(in) const pVisusProducer &
{
  if (! inSPVisusProducer( $input, (* $1) ))
    SWIG_fail; 
}

%typemap(typecheck) pVisusProducer
{
  checkSPVisusProducer ($input, $1 );
}
%typemap(typecheck) const pVisusProducer &
{
  checkSPVisusProducer ($input, $1 );
}

%typemap(in) pVisusSharedValue
{
  if (! inSPVisusSharedValue( $input, $1 ))
    SWIG_fail; 
}
%typemap(in) const pVisusSharedValue &
{
  if (! inSPVisusSharedValue( $input, (* $1) ))
    SWIG_fail; 
}

%typemap(typecheck) pVisusSharedValue
{
  checkSPVisusSharedValue ($input, $1 );
}
%typemap(typecheck) const pVisusSharedValue &
{
  checkSPVisusSharedValue ($input, $1 );
}
