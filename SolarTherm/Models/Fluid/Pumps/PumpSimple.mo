within SolarTherm.Models.Fluid.Pumps;
model PumpSimple
  extends SolarTherm.Interfaces.Models.Pump;
  Modelica.Blocks.Interfaces.RealInput m_flow annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=-90,
        origin={-10,78}), iconTransformation(
        extent={{-14,-14},{14,14}},
        rotation=-90,
        origin={0,86})));
equation
  fluid_b.m_flow=-m_flow;
  fluid_a.m_flow=m_flow;
  fluid_a.h_outflow=fluid_b.h_outflow;
  fluid_b.h_outflow=inStream(fluid_a.h_outflow);
  fluid_a.Xi_outflow=fluid_b.Xi_outflow;
  fluid_b.Xi_outflow=inStream(fluid_a.Xi_outflow);
  //fluid_a.p=fluid_b.p;
end PumpSimple;