/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @format
 */

import BaseDevice from '../BaseDevice';

export default class WindowsDevice extends BaseDevice {
  constructor() {
    super('', 'physical', 'Windows', 'Windows');
    this.icon = 'app-microsoft-windows';
  }

  teardown() {}
}
