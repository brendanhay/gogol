{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Drive.Internal.Sum
  ( -- * FilesListCorpus
    FilesListCorpus
      ( FilesListCorpus_Domain,
        FilesListCorpus_User,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | The source of files to list. Deprecated: use \'corpora\' instead.
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

-- | Files owned by or shared to the user. If a user has permissions on a Shared Drive, the files inside it won\'t be retrieved unless the user has created, opened, or shared the file.
pattern FilesListCorpus_User :: FilesListCorpus
pattern FilesListCorpus_User = FilesListCorpus "user"

{-# COMPLETE
  FilesListCorpus_Domain,
  FilesListCorpus_User,
  FilesListCorpus
  #-}
