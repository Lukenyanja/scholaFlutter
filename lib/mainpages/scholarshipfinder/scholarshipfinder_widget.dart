import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'scholarshipfinder_model.dart';
export 'scholarshipfinder_model.dart';

class ScholarshipfinderWidget extends StatefulWidget {
  const ScholarshipfinderWidget({super.key});

  static String routeName = 'scholarshipfinder';
  static String routePath = '/scholarshipfinder';

  @override
  State<ScholarshipfinderWidget> createState() =>
      _ScholarshipfinderWidgetState();
}

class _ScholarshipfinderWidgetState extends State<ScholarshipfinderWidget> {
  late ScholarshipfinderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScholarshipfinderModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Scholarships',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Autocomplete<String>(
                  initialValue: TextEditingValue(),
                  optionsBuilder: (textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<String>.empty();
                    }
                    return ['Option 1'].where((option) {
                      final lowercaseOption = option.toLowerCase();
                      return lowercaseOption
                          .contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  optionsViewBuilder: (context, onSelected, options) {
                    return AutocompleteOptionsList(
                      textFieldKey: _model.textFieldKey,
                      textController: _model.textController!,
                      options: options.toList(),
                      onSelected: onSelected,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                      textHighlightStyle: TextStyle(),
                      elevation: 4.0,
                      optionBackgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      optionHighlightColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      maxHeight: 200.0,
                    );
                  },
                  onSelected: (String selection) {
                    safeSetState(
                        () => _model.textFieldSelectedOption = selection);
                    FocusScope.of(context).unfocus();
                  },
                  fieldViewBuilder: (
                    context,
                    textEditingController,
                    focusNode,
                    onEditingComplete,
                  ) {
                    _model.textFieldFocusNode = focusNode;

                    _model.textController = textEditingController;
                    return TextFormField(
                      key: _model.textFieldKey,
                      controller: textEditingController,
                      focusNode: focusNode,
                      onEditingComplete: onEditingComplete,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textController',
                        Duration(milliseconds: 2000),
                        () => safeSetState(() {}),
                      ),
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Search scholarships...',
                        hintStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 12.0),
                        prefixIcon: Icon(
                          Icons.search,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        suffixIcon: _model.textController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  _model.textController?.clear();
                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF020202),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    );
                  },
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    'Filter by:',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller: _model.degreesValueController ??=
                                    FormFieldController<String>(null),
                                options: [
                                  'Diploma',
                                  'Bachelor',
                                  'Masters',
                                  'PhD',
                                  'Undergraduate',
                                  'Postgraduate',
                                  'Research',
                                  'Fellowship',
                                  'Internship'
                                ],
                                onChanged: (val) async {
                                  safeSetState(() => _model.degreesValue = val);
                                  FFAppState().loading = true;
                                  safeSetState(() {});
                                  _model.degreefiltered =
                                      await ScholarshipsGroup.multiFilterCall
                                          .call(
                                    categoryS: 'degree',
                                    valueS: _model.degreesValue,
                                  );

                                  FFAppState().scholarsipsFetched =
                                      (_model.degreefiltered?.jsonBody ?? '');
                                  safeSetState(() {});
                                  FFAppState().loading = false;
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                width: 160.0,
                                height: 40.0,
                                searchHintTextStyle: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                ),
                                searchTextStyle: TextStyle(),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: 'Degree Level',
                                searchHintText: 'Start typing',
                                icon: FaIcon(
                                  FontAwesomeIcons.bookReader,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              ),
                              FlutterFlowDropDown<String>(
                                controller: _model.countriesValueController ??=
                                    FormFieldController<String>(null),
                                options: [
                                  'Canada',
                                  'Turkey',
                                  'UK',
                                  'USA',
                                  'Germany',
                                  'South Africa',
                                  'China',
                                  'France',
                                  'Australia',
                                  'Italy',
                                  'New Zealand',
                                  'Japan',
                                  'Netherlands',
                                  'Switzerland',
                                  'Sweden',
                                  'Indonesia'
                                ],
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.countriesValue = val);
                                  FFAppState().loading = true;
                                  safeSetState(() {});
                                  _model.countryfiltered =
                                      await ScholarshipsGroup
                                          .getCountryScholarshipsCall
                                          .call(
                                    country: _model.countriesValue,
                                  );

                                  if ((_model.countryfiltered?.succeeded ??
                                      true)) {
                                    FFAppState().scholarsipsFetched =
                                        (_model.countryfiltered?.jsonBody ??
                                            '');
                                    safeSetState(() {});
                                    FFAppState().loading = false;
                                    safeSetState(() {});
                                  }

                                  safeSetState(() {});
                                },
                                width: 160.0,
                                height: 40.0,
                                searchHintTextStyle: TextStyle(),
                                searchTextStyle: TextStyle(),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: 'Country',
                                searchHintText: 'Search',
                                icon: FaIcon(
                                  FontAwesomeIcons.globe,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              ),
                              FlutterFlowDropDown<String>(
                                controller: _model.fundingValueController ??=
                                    FormFieldController<String>(null),
                                options: [
                                  'Fully funded',
                                  'Partial funding',
                                  'Stipend',
                                  'Cash Prize',
                                  'Tuition fee'
                                ],
                                onChanged: (val) async {
                                  safeSetState(() => _model.fundingValue = val);
                                  FFAppState().loading = true;
                                  safeSetState(() {});
                                  _model.fundingfiltered =
                                      await ScholarshipsGroup.multiFilterCall
                                          .call(
                                    categoryS: 'funding_status',
                                    valueS: _model.fundingValue,
                                  );

                                  FFAppState().scholarsipsFetched =
                                      (_model.fundingfiltered?.jsonBody ?? '');
                                  safeSetState(() {});
                                  FFAppState().loading = false;
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                width: 160.0,
                                height: 40.0,
                                searchHintTextStyle: TextStyle(),
                                searchTextStyle: TextStyle(),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: 'Funding',
                                searchHintText: 'Search here..',
                                icon: FaIcon(
                                  FontAwesomeIcons.moneyCheckAlt,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              ),
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.destinationValueController ??=
                                        FormFieldController<String>(null),
                                options: [
                                  'Any',
                                  'USA',
                                  'UK',
                                  'Canada',
                                  'Saudi Arabia'
                                ],
                                onChanged: (val) => safeSetState(
                                    () => _model.destinationValue = val),
                                width: 160.0,
                                height: 40.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: 'Study destintion',
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 4.0, 6.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (FFAppState().loading == true)
                  Lottie.asset(
                    'assets/jsons/loader.json',
                    width: 200.0,
                    height: 118.22,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                if (!FFAppState().loading)
                  Expanded(
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Builder(
                            builder: (context) {
                              final ccc = getJsonField(
                                FFAppState().scholarsipsFetched,
                                r'''$.results''',
                              ).toList();

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: ccc.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 10.0),
                                itemBuilder: (context, cccIndex) {
                                  final cccItem = ccc[cccIndex];
                                  return Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          ScholarshipDetailsWidget.routeName,
                                          queryParameters: {
                                            'slug': serializeParam(
                                              getJsonField(
                                                cccItem,
                                                r'''$.slug''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 296.0,
                                        constraints: BoxConstraints(
                                          minHeight: 268.2,
                                          maxHeight: 300.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x1A000000),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: Color(0x7057636C),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                child: CachedNetworkImage(
                                                  fadeInDuration: Duration(
                                                      milliseconds: 200),
                                                  fadeOutDuration: Duration(
                                                      milliseconds: 200),
                                                  imageUrl: getJsonField(
                                                    cccItem,
                                                    r'''$.Scholarship_image''',
                                                  ).toString(),
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  fit: BoxFit.contain,
                                                  alignment:
                                                      Alignment(-1.0, 0.0),
                                                  errorWidget: (context, error,
                                                          stackTrace) =>
                                                      Image.asset(
                                                    'assets/images/error_image.gif',
                                                    width: double.infinity,
                                                    height: 100.0,
                                                    fit: BoxFit.contain,
                                                    alignment:
                                                        Alignment(-1.0, 0.0),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      getJsonField(
                                                        cccItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 21.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Countries:  ${getJsonField(
                                                            cccItem,
                                                            r'''$.country''',
                                                          ).toString()}',
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 17.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 120.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    4.0,
                                                                    8.0,
                                                                    4.0),
                                                        child: AutoSizeText(
                                                          getJsonField(
                                                            cccItem,
                                                            r'''$.funding_status''',
                                                          ).toString(),
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        final degree =
                                                            getJsonField(
                                                          cccItem,
                                                          r'''$.degree''',
                                                        )
                                                                .toList()
                                                                .take(4)
                                                                .toList();

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children:
                                                              List.generate(
                                                                  degree.length,
                                                                  (degreeIndex) {
                                                            final degreeItem =
                                                                degree[
                                                                    degreeIndex];
                                                            return Container(
                                                              width: 120.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  degreeItem
                                                                      .toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  maxLines: 1,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            );
                                                          }).divide(SizedBox(
                                                                  width: 8.0)),
                                                        );
                                                      },
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
