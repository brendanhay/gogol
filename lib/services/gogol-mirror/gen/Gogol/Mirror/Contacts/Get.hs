{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Mirror.Contacts.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single contact by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.get@.
module Gogol.Mirror.Contacts.Get
    (
    -- * Resource
      MirrorContactsGetResource

    -- ** Constructing a Request
    , newMirrorContactsGet
    , MirrorContactsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.contacts.get@ method which the
-- 'MirrorContactsGet' request conforms to.
type MirrorContactsGetResource =
     "mirror" Core.:>
       "v1" Core.:>
         "contacts" Core.:>
           Core.Capture "id" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Get '[Core.JSON] Contact

-- | Gets a single contact by ID.
--
-- /See:/ 'newMirrorContactsGet' smart constructor.
newtype MirrorContactsGet = MirrorContactsGet
    {
      -- | The ID of the contact.
      id :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorContactsGet' with the minimum fields required to make a request.
newMirrorContactsGet 
    ::  Core.Text
       -- ^  The ID of the contact. See 'id'.
    -> MirrorContactsGet
newMirrorContactsGet id = MirrorContactsGet {id = id}

instance Core.GoogleRequest MirrorContactsGet where
        type Rs MirrorContactsGet = Contact
        type Scopes MirrorContactsGet =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient MirrorContactsGet{..}
          = go id (Core.Just Core.AltJSON) mirrorService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy MirrorContactsGetResource)
                      Core.mempty

