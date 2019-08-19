%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.21.0 on {{2019,8,12},{18,35,16}}
-module(srv_sample_func).

-export([encode_msg/1, encode_msg/2]).
-export([decode_msg/2]).
-export([merge_msgs/2]).
-export([verify_msg/1]).
-export([get_msg_defs/0]).
-export([get_msg_names/0]).
-export([get_enum_names/0]).
-export([find_msg_def/1, fetch_msg_def/1]).
-export([find_enum_def/1, fetch_enum_def/1]).
-export([enum_symbol_by_value/2, enum_value_by_symbol/2]).
-export([get_service_names/0]).
-export([get_service_def/1]).
-export([get_rpc_names/1]).
-export([find_rpc_def/2, fetch_rpc_def/2]).
-export([get_package_name/0]).
-export([gpb_version_as_string/0, gpb_version_as_list/0]).

-include("srv_sample_func.hrl").
-include("gpb.hrl").



encode_msg(Msg) -> encode_msg(Msg, []).


encode_msg(Msg, Opts) ->
    case proplists:get_bool(verify, Opts) of
      true -> verify_msg(Msg);
      false -> ok
    end,
    case Msg of
      #'srv.sample.func.Call'{} ->
	  'e_msg_srv.sample.func.Call'(Msg);
      #'srv.sample.type.Type'{} ->
	  'e_msg_srv.sample.type.Type'(Msg)
    end.


'e_msg_srv.sample.func.Call'(_Msg) -> <<>>.

'e_msg_srv.sample.type.Type'(_Msg) -> <<>>.





decode_msg(Bin, MsgName) when is_binary(Bin) ->
    case MsgName of
      'srv.sample.func.Call' ->
	  'd_msg_srv.sample.func.Call'(Bin);
      'srv.sample.type.Type' ->
	  'd_msg_srv.sample.type.Type'(Bin)
    end.



'd_msg_srv.sample.func.Call'(Bin) ->
    'dfp_read_field_def_srv.sample.func.Call'(Bin, 0, 0).

'dfp_read_field_def_srv.sample.func.Call'(<<>>, 0, 0) ->
    #'srv.sample.func.Call'{};
'dfp_read_field_def_srv.sample.func.Call'(Other, Z1,
					  Z2) ->
    'dg_read_field_def_srv.sample.func.Call'(Other, Z1, Z2).

'dg_read_field_def_srv.sample.func.Call'(<<1:1, X:7,
					   Rest/binary>>,
					 N, Acc)
    when N < 32 - 7 ->
    'dg_read_field_def_srv.sample.func.Call'(Rest, N + 7,
					     X bsl N + Acc);
'dg_read_field_def_srv.sample.func.Call'(<<0:1, X:7,
					   Rest/binary>>,
					 N, Acc) ->
    Key = X bsl N + Acc,
    case Key band 7 of
      0 -> 'skip_varint_srv.sample.func.Call'(Rest, 0, 0);
      1 -> 'skip_64_srv.sample.func.Call'(Rest, 0, 0);
      2 ->
	  'skip_length_delimited_srv.sample.func.Call'(Rest, 0,
						       0);
      5 -> 'skip_32_srv.sample.func.Call'(Rest, 0, 0)
    end;
'dg_read_field_def_srv.sample.func.Call'(<<>>, 0, 0) ->
    #'srv.sample.func.Call'{}.

'skip_varint_srv.sample.func.Call'(<<1:1, _:7,
				     Rest/binary>>,
				   Z1, Z2) ->
    'skip_varint_srv.sample.func.Call'(Rest, Z1, Z2);
'skip_varint_srv.sample.func.Call'(<<0:1, _:7,
				     Rest/binary>>,
				   Z1, Z2) ->
    'dfp_read_field_def_srv.sample.func.Call'(Rest, Z1, Z2).


'skip_length_delimited_srv.sample.func.Call'(<<1:1, X:7,
					       Rest/binary>>,
					     N, Acc)
    when N < 57 ->
    'skip_length_delimited_srv.sample.func.Call'(Rest,
						 N + 7, X bsl N + Acc);
'skip_length_delimited_srv.sample.func.Call'(<<0:1, X:7,
					       Rest/binary>>,
					     N, Acc) ->
    Length = X bsl N + Acc,
    <<_:Length/binary, Rest2/binary>> = Rest,
    'dfp_read_field_def_srv.sample.func.Call'(Rest2, 0, 0).


'skip_32_srv.sample.func.Call'(<<_:32, Rest/binary>>,
			       Z1, Z2) ->
    'dfp_read_field_def_srv.sample.func.Call'(Rest, Z1, Z2).


'skip_64_srv.sample.func.Call'(<<_:64, Rest/binary>>,
			       Z1, Z2) ->
    'dfp_read_field_def_srv.sample.func.Call'(Rest, Z1, Z2).


'd_msg_srv.sample.type.Type'(Bin) ->
    'dfp_read_field_def_srv.sample.type.Type'(Bin, 0, 0).

'dfp_read_field_def_srv.sample.type.Type'(<<>>, 0, 0) ->
    #'srv.sample.type.Type'{};
'dfp_read_field_def_srv.sample.type.Type'(Other, Z1,
					  Z2) ->
    'dg_read_field_def_srv.sample.type.Type'(Other, Z1, Z2).

'dg_read_field_def_srv.sample.type.Type'(<<1:1, X:7,
					   Rest/binary>>,
					 N, Acc)
    when N < 32 - 7 ->
    'dg_read_field_def_srv.sample.type.Type'(Rest, N + 7,
					     X bsl N + Acc);
'dg_read_field_def_srv.sample.type.Type'(<<0:1, X:7,
					   Rest/binary>>,
					 N, Acc) ->
    Key = X bsl N + Acc,
    case Key band 7 of
      0 -> 'skip_varint_srv.sample.type.Type'(Rest, 0, 0);
      1 -> 'skip_64_srv.sample.type.Type'(Rest, 0, 0);
      2 ->
	  'skip_length_delimited_srv.sample.type.Type'(Rest, 0,
						       0);
      5 -> 'skip_32_srv.sample.type.Type'(Rest, 0, 0)
    end;
'dg_read_field_def_srv.sample.type.Type'(<<>>, 0, 0) ->
    #'srv.sample.type.Type'{}.

'skip_varint_srv.sample.type.Type'(<<1:1, _:7,
				     Rest/binary>>,
				   Z1, Z2) ->
    'skip_varint_srv.sample.type.Type'(Rest, Z1, Z2);
'skip_varint_srv.sample.type.Type'(<<0:1, _:7,
				     Rest/binary>>,
				   Z1, Z2) ->
    'dfp_read_field_def_srv.sample.type.Type'(Rest, Z1, Z2).


'skip_length_delimited_srv.sample.type.Type'(<<1:1, X:7,
					       Rest/binary>>,
					     N, Acc)
    when N < 57 ->
    'skip_length_delimited_srv.sample.type.Type'(Rest,
						 N + 7, X bsl N + Acc);
'skip_length_delimited_srv.sample.type.Type'(<<0:1, X:7,
					       Rest/binary>>,
					     N, Acc) ->
    Length = X bsl N + Acc,
    <<_:Length/binary, Rest2/binary>> = Rest,
    'dfp_read_field_def_srv.sample.type.Type'(Rest2, 0, 0).


'skip_32_srv.sample.type.Type'(<<_:32, Rest/binary>>,
			       Z1, Z2) ->
    'dfp_read_field_def_srv.sample.type.Type'(Rest, Z1, Z2).


'skip_64_srv.sample.type.Type'(<<_:64, Rest/binary>>,
			       Z1, Z2) ->
    'dfp_read_field_def_srv.sample.type.Type'(Rest, Z1, Z2).






merge_msgs(Prev, New)
    when element(1, Prev) =:= element(1, New) ->
    case Prev of
      #'srv.sample.func.Call'{} ->
	  'merge_msg_srv.sample.func.Call'(Prev, New);
      #'srv.sample.type.Type'{} ->
	  'merge_msg_srv.sample.type.Type'(Prev, New)
    end.

'merge_msg_srv.sample.func.Call'(_Prev, New) -> New.

'merge_msg_srv.sample.type.Type'(_Prev, New) -> New.



verify_msg(Msg) ->
    case Msg of
      #'srv.sample.func.Call'{} ->
	  'v_msg_srv.sample.func.Call'(Msg,
				       ['srv.sample.func.Call']);
      #'srv.sample.type.Type'{} ->
	  'v_msg_srv.sample.type.Type'(Msg,
				       ['srv.sample.type.Type']);
      _ -> mk_type_error(not_a_known_message, Msg, [])
    end.


'v_msg_srv.sample.func.Call'(#'srv.sample.func.Call'{},
			     _Path) ->
    ok.

'v_msg_srv.sample.type.Type'(#'srv.sample.type.Type'{},
			     _Path) ->
    ok.

mk_type_error(Error, ValueSeen, Path) ->
    Path2 = prettify_path(Path),
    erlang:error({gpb_type_error,
		  {Error, [{value, ValueSeen}, {path, Path2}]}}).


prettify_path([]) -> top_level;
prettify_path(PathR) ->
    list_to_atom(string:join(lists:map(fun atom_to_list/1,
				       lists:reverse(PathR)),
			     ".")).



-compile({nowarn_unused_function,id/1}).
-compile({inline,id/1}).
id(X) -> X.

-compile({nowarn_unused_function,cons/2}).
-compile({inline,cons/2}).
cons(Elem, Acc) -> [Elem | Acc].

-compile({nowarn_unused_function,lists_reverse/1}).
-compile({inline,lists_reverse/1}).
'lists_reverse'(L) -> lists:reverse(L).

-compile({nowarn_unused_function,'erlang_++'/2}).
-compile({inline,'erlang_++'/2}).
'erlang_++'(A, B) -> A ++ B.



get_msg_defs() ->
    [{{msg, 'srv.sample.func.Call'}, []},
     {{msg, 'srv.sample.type.Type'}, []}].


get_msg_names() ->
    ['srv.sample.func.Call', 'srv.sample.type.Type'].


get_enum_names() -> [].


fetch_msg_def(MsgName) ->
    case find_msg_def(MsgName) of
      Fs when is_list(Fs) -> Fs;
      error -> erlang:error({no_such_msg, MsgName})
    end.


fetch_enum_def(EnumName) ->
    erlang:error({no_such_enum, EnumName}).


find_msg_def('srv.sample.func.Call') -> [];
find_msg_def('srv.sample.type.Type') -> [];
find_msg_def(_) -> error.


find_enum_def(_) -> error.


enum_symbol_by_value(E, V) ->
    erlang:error({no_enum_defs, E, V}).


enum_value_by_symbol(E, V) ->
    erlang:error({no_enum_defs, E, V}).



get_service_names() -> [].


get_service_def(_) -> error.


get_rpc_names(_) -> error.


find_rpc_def(_, _) -> error.



fetch_rpc_def(ServiceName, RpcName) ->
    erlang:error({no_such_rpc, ServiceName, RpcName}).


get_package_name() -> 'srv.sample.func'.



gpb_version_as_string() ->
    "3.21.0".

gpb_version_as_list() ->
    [3,21,0].
