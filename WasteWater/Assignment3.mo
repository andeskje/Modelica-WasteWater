within WasteWater;
package Assignment3
  extends Assignment2d;
model OCI "What is this"

  extends WasteWater.Icons.sensor_O2;

  Modelica.Blocks.Interfaces.RealOutput OCI(start=0) annotation (Placement(transformation(extent={{88,-10},{108,10}})));

  Modelica.Blocks.Interfaces.RealInput AE annotation (Placement(transformation(extent={{-10,-10},
            {10,10}},
        rotation=270,
        origin={-40,-88})));
  Modelica.Blocks.Interfaces.RealInput PE annotation (Placement(transformation(extent={{-10,-10},
            {10,10}},
        rotation=270,
        origin={-20,-88})));
  Modelica.Blocks.Interfaces.RealInput SP annotation (Placement(transformation(extent={{-10,-10},
            {10,10}},
        rotation=270,
        origin={0,-88})));
  Modelica.Blocks.Interfaces.RealInput EC annotation (Placement(transformation(extent={{-10,-10},
            {10,10}},
        rotation=270,
        origin={20,-88})));
  Modelica.Blocks.Interfaces.RealInput ME annotation (Placement(transformation(extent={{-10,-10},
            {10,10}},
        rotation=270,
        origin={40,-88})));

equation
  OCI = AE + PE + 5*SP + 3*EC + ME;

  annotation (
    Documentation(info="This component measures the dissolved oxygen concentration [g/m3]
of ASM1 wastewater and provides the result as output signal (to be
further processed with blocks of the Modelica.Blocks library).
"), Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={
        Ellipse(
          extent={{-50,50},{50,-50}},
          lineColor={0,0,0},
          lineThickness=0.5,
          fillColor={223,223,159},
          fillPattern=FillPattern.Solid),
        Line(
          points={{0,50},{0,38}},
          thickness=0.5),
        Line(
          points={{-50,0},{38,0}},
          thickness=0.5),
        Line(
          points={{50,0},{38,0}},
          thickness=0.5),
        Line(
          points={{-36,34},{-28,26}},
          thickness=0.5),
        Line(
          points={{34,36},{26,28}},
          thickness=0.5),
        Line(
          points={{0,0},{26,28}},
          thickness=0.5),
        Polygon(
          points={{30,32},{10,24},{24,12},{30,32}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Text(extent={{-34,-10},{38,-32}},
          textString="Kla",
          lineColor={0,0,0}),
        Line(
          points={{0,-50},{0,-90}},
          thickness=0.5),
        Line(points={{50,0},{88,0}}),
        Text(extent={{-80,100},{80,60}}, textString=
                                             "%name")}));
end OCI;
end Assignment3;
