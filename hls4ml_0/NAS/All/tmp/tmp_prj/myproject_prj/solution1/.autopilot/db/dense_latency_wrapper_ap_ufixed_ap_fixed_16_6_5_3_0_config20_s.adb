<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>dense_latency_wrapper_ap_ufixed_ap_fixed_16_6_5_3_0_config20_s</name>
      <module_structure>Pipeline</module_structure>
      <ret_bitwidth>12</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>data_val1</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>4294967295</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>6</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_2">
          <Value>
            <Obj>
              <type>0</type>
              <id>3</id>
              <name>data_val1_read</name>
              <fileName>firmware/nnet_utils/nnet_dense_stream.h</fileName>
              <fileDirectory>../.</fileDirectory>
              <lineNumber>17</lineNumber>
              <contextFuncName>dense_latency_wrapper&amp;lt;ap_ufixed&amp;lt;6, 0, AP_RND_CONV, AP_SAT, 0&amp;gt;, ap_fixed&amp;lt;16, 6, AP_TRN, AP_WRAP, 0&amp;gt;, config20&amp;gt;</contextFuncName>
              <contextNormFuncName>dense_latency_wrapper_ap_ufixed_6_0_AP_RND_CONV_AP_SAT_0_ap_fixed_16_6_AP_TRN_AP_WRAP_0_config20_s</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>/home/petertso/Documents/deeppicarmicro/NAS/All/tmp/tmp_prj</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>firmware/nnet_utils/nnet_dense_stream.h</first>
                        <second>dense_latency_wrapper&amp;lt;ap_ufixed&amp;lt;6, 0, AP_RND_CONV, AP_SAT, 0&amp;gt;, ap_fixed&amp;lt;16, 6, AP_TRN, AP_WRAP, 0&amp;gt;, config20&amp;gt;</second>
                      </first>
                      <second>17</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>4294967295</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>6</bitwidth>
          </Value>
          <oprand_edges>
            <count>2</count>
            <item_version>0</item_version>
            <item>8</item>
            <item>9</item>
          </oprand_edges>
          <opcode>read</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_3">
          <Value>
            <Obj>
              <type>0</type>
              <id>4</id>
              <name>res</name>
              <fileName>firmware/nnet_utils/nnet_dense_stream.h</fileName>
              <fileDirectory>../.</fileDirectory>
              <lineNumber>17</lineNumber>
              <contextFuncName>dense_latency_wrapper&amp;lt;ap_ufixed&amp;lt;6, 0, AP_RND_CONV, AP_SAT, 0&amp;gt;, ap_fixed&amp;lt;16, 6, AP_TRN, AP_WRAP, 0&amp;gt;, config20&amp;gt;</contextFuncName>
              <contextNormFuncName>dense_latency_wrapper_ap_ufixed_6_0_AP_RND_CONV_AP_SAT_0_ap_fixed_16_6_AP_TRN_AP_WRAP_0_config20_s</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/petertso/Documents/deeppicarmicro/NAS/All/tmp/tmp_prj</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>firmware/nnet_utils/nnet_dense_stream.h</first>
                        <second>dense_latency_wrapper&amp;lt;ap_ufixed&amp;lt;6, 0, AP_RND_CONV, AP_SAT, 0&amp;gt;, ap_fixed&amp;lt;16, 6, AP_TRN, AP_WRAP, 0&amp;gt;, config20&amp;gt;</second>
                      </first>
                      <second>17</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>res_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s_fu_20</rtlName>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>4294967295</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>12</bitwidth>
          </Value>
          <oprand_edges>
            <count>2</count>
            <item_version>0</item_version>
            <item>11</item>
            <item>12</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>3.81</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>5</id>
              <name>_ln18</name>
              <fileName>firmware/nnet_utils/nnet_dense_stream.h</fileName>
              <fileDirectory>../.</fileDirectory>
              <lineNumber>18</lineNumber>
              <contextFuncName>dense_latency_wrapper&amp;lt;ap_ufixed&amp;lt;6, 0, AP_RND_CONV, AP_SAT, 0&amp;gt;, ap_fixed&amp;lt;16, 6, AP_TRN, AP_WRAP, 0&amp;gt;, config20&amp;gt;</contextFuncName>
              <contextNormFuncName>dense_latency_wrapper_ap_ufixed_6_0_AP_RND_CONV_AP_SAT_0_ap_fixed_16_6_AP_TRN_AP_WRAP_0_config20_s</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/petertso/Documents/deeppicarmicro/NAS/All/tmp/tmp_prj</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>firmware/nnet_utils/nnet_dense_stream.h</first>
                        <second>dense_latency_wrapper&amp;lt;ap_ufixed&amp;lt;6, 0, AP_RND_CONV, AP_SAT, 0&amp;gt;, ap_fixed&amp;lt;16, 6, AP_TRN, AP_WRAP, 0&amp;gt;, config20&amp;gt;</second>
                      </first>
                      <second>18</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>4294967295</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>13</item>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>2</type>
              <id>10</id>
              <name>dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>4294967295</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>12</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:dense_latency&lt;ap_ufixed&lt;6, 0, 4, 0, 0&gt;, ap_fixed&lt;16, 6, 5, 3, 0&gt;, config20&gt;&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_6">
          <Obj>
            <type>3</type>
            <id>6</id>
            <name>dense_latency_wrapper&lt;ap_ufixed,ap_fixed&lt;16,6,5,3,0&gt;,config20&gt;</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <contextNormFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <control/>
            <opType/>
            <implIndex/>
            <coreName/>
            <isStorage>0</isStorage>
            <storageDepth>0</storageDepth>
            <coreId>4294967295</coreId>
            <rtlModuleName/>
          </Obj>
          <node_objs>
            <count>3</count>
            <item_version>0</item_version>
            <item>3</item>
            <item>4</item>
            <item>5</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_7">
          <id>9</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>3</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_8">
          <id>11</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>4</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_9">
          <id>12</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>4</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_10">
          <id>13</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>5</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_11">
        <mId>1</mId>
        <mTag>dense_latency_wrapper&lt;ap_ufixed,ap_fixed&lt;16,6,5,3,0&gt;,config20&gt;</mTag>
        <mNormTag>dense_latency_wrapper_ap_ufixed_ap_fixed_16_6_5_3_0_config20_s</mNormTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </basic_blocks>
        <mII>1</mII>
        <mDepth>1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>0</mMinLatency>
        <mMaxLatency>0</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="24" tracking_level="1" version="0" object_id="_12">
      <states class_id="25" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="26" tracking_level="1" version="0" object_id="_13">
          <id>1</id>
          <operations class_id="27" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="28" tracking_level="1" version="0" object_id="_14">
              <id>2</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_15">
              <id>3</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_16">
              <id>4</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_17">
              <id>5</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="29" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </transitions>
    </fsm>
    <res class_id="30" tracking_level="1" version="0" object_id="_18">
      <dp_component_resource class_id="31" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="32" tracking_level="0" version="0">
          <first>res_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s_fu_20 (dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s)</first>
          <second class_id="33" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="34" tracking_level="0" version="0">
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>24</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>res_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s_fu_20</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="35" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="0" version="0">
          <first>res_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s_fu_20 (dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>4</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="37" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="38" tracking_level="0" version="0">
        <first>3</first>
        <second class_id="39" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>4</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>5</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="40" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="41" tracking_level="0" version="0">
        <first>6</first>
        <second class_id="42" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="43" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="44" tracking_level="1" version="0" object_id="_19">
        <region_name>dense_latency_wrapper&lt;ap_ufixed,ap_fixed&lt;16,6,5,3,0&gt;,config20&gt;</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </basic_blocks>
        <nodes>
          <count>0</count>
          <item_version>0</item_version>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>8</region_type>
        <interval>1</interval>
        <pipe_depth>1</pipe_depth>
        <mDBIIViolationVec class_id="45" tracking_level="0" version="0">
          <count>0</count>
          <item_version>0</item_version>
        </mDBIIViolationVec>
      </item>
    </regions>
    <dp_fu_nodes class_id="46" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="47" tracking_level="0" version="0">
        <first>14</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>3</item>
        </second>
      </item>
      <item>
        <first>20</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>4</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="49" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="50" tracking_level="0" version="0">
        <first>res_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config20_s_fu_20</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>4</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>data_val1_read_read_fu_14</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>3</item>
        </second>
      </item>
    </dp_fu_nodes_io>
    <return_ports>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>ap_return</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>5</item>
        </second>
      </item>
    </return_ports>
    <dp_mem_port_nodes class_id="51" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="52" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="53" tracking_level="0" version="0">
        <first>data_val1</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>read</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>3</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core>
      <count>0</count>
      <item_version>0</item_version>
    </port2core>
    <node2core>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>4</first>
        <second>
          <first>-1</first>
          <second>-1</second>
        </second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
