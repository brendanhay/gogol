{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.GroupsMigration.Archive.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new mail into the archive of the Google group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference> for @groupsmigration.archive.insert@.
module Network.Google.Resource.GroupsMigration.Archive.Insert
    (
    -- * REST Resource
      ArchiveInsertResource

    -- * Creating a Request
    , archiveInsert
    , ArchiveInsert

    -- * Request Lenses
    , aiGroupId
    ) where

import           Network.Google.GroupsMigration.Types
import           Network.Google.Prelude

-- | A resource alias for @groupsmigration.archive.insert@ method which the
-- 'ArchiveInsert' request conforms to.
type ArchiveInsertResource =
     "groups" :>
       "v1" :>
         "groups" :>
           Capture "groupId" Text :>
             "archive" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Groups
       :<|>
       "upload" :>
         "groups" :>
           "v1" :>
             "groups" :>
               Capture "groupId" Text :>
                 "archive" :>
                   QueryParam "alt" AltJSON :>
                     QueryParam "uploadType" AltMedia :>
                       AltMedia :> Post '[JSON] Groups

-- | Inserts a new mail into the archive of the Google group.
--
-- /See:/ 'archiveInsert' smart constructor.
newtype ArchiveInsert =
  ArchiveInsert'
    { _aiGroupId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArchiveInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiGroupId'
archiveInsert
    :: Text -- ^ 'aiGroupId'
    -> ArchiveInsert
archiveInsert pAiGroupId_ = ArchiveInsert' {_aiGroupId = pAiGroupId_}


-- | The group ID
aiGroupId :: Lens' ArchiveInsert Text
aiGroupId
  = lens _aiGroupId (\ s a -> s{_aiGroupId = a})

instance GoogleRequest ArchiveInsert where
        type Rs ArchiveInsert = Groups
        type Scopes ArchiveInsert =
             '["https://www.googleapis.com/auth/apps.groups.migration"]
        requestClient ArchiveInsert'{..}
          = go _aiGroupId (Just AltJSON) groupsMigrationService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ArchiveInsertResource)
                      mempty

instance GoogleRequest (MediaUpload ArchiveInsert)
         where
        type Rs (MediaUpload ArchiveInsert) = Groups
        type Scopes (MediaUpload ArchiveInsert) =
             Scopes ArchiveInsert
        requestClient (MediaUpload ArchiveInsert'{..} body)
          = go _aiGroupId (Just AltJSON) (Just AltMedia) body
              groupsMigrationService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ArchiveInsertResource)
                      mempty
