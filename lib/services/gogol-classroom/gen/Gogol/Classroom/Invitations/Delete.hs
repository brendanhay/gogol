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
-- Module      : Gogol.Classroom.Invitations.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to delete the requested invitation or for access errors. * @NOT_FOUND@ if no invitation exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.delete@.
module Gogol.Classroom.Invitations.Delete
    (
    -- * Resource
      ClassroomInvitationsDeleteResource

    -- ** Constructing a Request
    , newClassroomInvitationsDelete
    , ClassroomInvitationsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.invitations.delete@ method which the
-- 'ClassroomInvitationsDelete' request conforms to.
type ClassroomInvitationsDeleteResource =
     "v1" Core.:>
       "invitations" Core.:>
         Core.Capture "id" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes an invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to delete the requested invitation or for access errors. * @NOT_FOUND@ if no invitation exists with the requested ID.
--
-- /See:/ 'newClassroomInvitationsDelete' smart constructor.
data ClassroomInvitationsDelete = ClassroomInvitationsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the invitation to delete.
    , id :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomInvitationsDelete' with the minimum fields required to make a request.
newClassroomInvitationsDelete 
    ::  Core.Text
       -- ^  Identifier of the invitation to delete. See 'id'.
    -> ClassroomInvitationsDelete
newClassroomInvitationsDelete id =
  ClassroomInvitationsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomInvitationsDelete
         where
        type Rs ClassroomInvitationsDelete = Empty
        type Scopes ClassroomInvitationsDelete =
             '["https://www.googleapis.com/auth/classroom.rosters"]
        requestClient ClassroomInvitationsDelete{..}
          = go id xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomInvitationsDeleteResource)
                      Core.mempty

