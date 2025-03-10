{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Mirror.Accounts.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new account for a user
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.accounts.insert@.
module Gogol.Mirror.Accounts.Insert
  ( -- * Resource
    MirrorAccountsInsertResource,

    -- ** Constructing a Request
    MirrorAccountsInsert (..),
    newMirrorAccountsInsert,
  )
where

import Gogol.Mirror.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @mirror.accounts.insert@ method which the
-- 'MirrorAccountsInsert' request conforms to.
type MirrorAccountsInsertResource =
  "mirror"
    Core.:> "v1"
    Core.:> "accounts"
    Core.:> Core.Capture "userToken" Core.Text
    Core.:> Core.Capture "accountType" Core.Text
    Core.:> Core.Capture "accountName" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Account
    Core.:> Core.Post '[Core.JSON] Account

-- | Inserts a new account for a user
--
-- /See:/ 'newMirrorAccountsInsert' smart constructor.
data MirrorAccountsInsert = MirrorAccountsInsert
  { -- | The name of the account to be passed to the Android Account Manager.
    accountName :: Core.Text,
    -- | Account type to be passed to Android Account Manager.
    accountType :: Core.Text,
    -- | Multipart request metadata.
    payload :: Account,
    -- | The ID for the user.
    userToken :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorAccountsInsert' with the minimum fields required to make a request.
newMirrorAccountsInsert ::
  -- |  The name of the account to be passed to the Android Account Manager. See 'accountName'.
  Core.Text ->
  -- |  Account type to be passed to Android Account Manager. See 'accountType'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Account ->
  -- |  The ID for the user. See 'userToken'.
  Core.Text ->
  MirrorAccountsInsert
newMirrorAccountsInsert accountName accountType payload userToken =
  MirrorAccountsInsert
    { accountName = accountName,
      accountType = accountType,
      payload = payload,
      userToken = userToken
    }

instance Core.GoogleRequest MirrorAccountsInsert where
  type Rs MirrorAccountsInsert = Account
  type Scopes MirrorAccountsInsert = '[]
  requestClient MirrorAccountsInsert {..} =
    go
      userToken
      accountType
      accountName
      (Core.Just Core.AltJSON)
      payload
      mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorAccountsInsertResource)
          Core.mempty
