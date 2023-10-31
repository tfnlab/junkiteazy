
// Determine if an element supports the disabled attribute

import contextToElement from '../util/context-to-element';
import _supports from '../supports/supports';
var supports = void 0;

// https://www.w3.org/TR/html5/disabled-elements.html#concept-element-disabled
var disabledElementsPattern = void 0;
var disabledElements = {
  input: true,
  select: true,
  textarea: true,
  button: true,
  fieldset: true,
  form: true
};

export default function (context) {
  if (!supports) {
    supports = _supports();

    if (supports.focusFieldsetDisabled) {
      delete disabledElements.fieldset;
    }

    if (supports.focusFormDisabled) {
      delete disabledElements.form;
    }

    disabledElementsPattern = new RegExp('^(' + Object.keys(disabledElements).join('|') + ')$');
  }

  var element = contextToElement({
    label: 'is/native-disabled-supported',
    context: context
  });

  var nodeName = element.nodeName.toLowerCase();
  return Boolean(disabledElementsPattern.test(nodeName));
}
//# sourceMappingURL=native-disabled-supported.js.map