{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Drive.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Drive.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ResolveAccessProposalRequest_Action
    ResolveAccessProposalRequest_Action
      ( ResolveAccessProposalRequest_Action_ACTIONUNSPECIFIED,
        ResolveAccessProposalRequest_Action_Accept,
        ResolveAccessProposalRequest_Action_Deny,
        ..
      ),

    -- * FilesListCorpus
    FilesListCorpus
      ( FilesListCorpus_Domain,
        FilesListCorpus_User,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Required. The action to take on the AccessProposal.
newtype ResolveAccessProposalRequest_Action = ResolveAccessProposalRequest_Action {fromResolveAccessProposalRequest_Action :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified action
pattern ResolveAccessProposalRequest_Action_ACTIONUNSPECIFIED :: ResolveAccessProposalRequest_Action
pattern ResolveAccessProposalRequest_Action_ACTIONUNSPECIFIED = ResolveAccessProposalRequest_Action "ACTION_UNSPECIFIED"

-- | The user accepts the proposal. Note: If this action is used, the @role@ field must have at least one value.
pattern ResolveAccessProposalRequest_Action_Accept :: ResolveAccessProposalRequest_Action
pattern ResolveAccessProposalRequest_Action_Accept = ResolveAccessProposalRequest_Action "ACCEPT"

-- | The user denies the proposal
pattern ResolveAccessProposalRequest_Action_Deny :: ResolveAccessProposalRequest_Action
pattern ResolveAccessProposalRequest_Action_Deny = ResolveAccessProposalRequest_Action "DENY"

{-# COMPLETE
  ResolveAccessProposalRequest_Action_ACTIONUNSPECIFIED,
  ResolveAccessProposalRequest_Action_Accept,
  ResolveAccessProposalRequest_Action_Deny,
  ResolveAccessProposalRequest_Action
  #-}

-- | Deprecated: The source of files to list. Use \'corpora\' instead.
newtype FilesListCorpus = FilesListCorpus {fromFilesListCorpus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Files shared to the user\'s domain.
pattern FilesListCorpus_Domain :: FilesListCorpus
pattern FilesListCorpus_Domain = FilesListCorpus "domain"

-- | Files owned by or shared to the user.
pattern FilesListCorpus_User :: FilesListCorpus
pattern FilesListCorpus_User = FilesListCorpus "user"

{-# COMPLETE
  FilesListCorpus_Domain,
  FilesListCorpus_User,
  FilesListCorpus
  #-}
