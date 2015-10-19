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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new mail into the archive of the Google group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference> for @GroupsmigrationArchiveInsert@.
module Network.Google.Resource.GroupsMigration.Archive.Insert
    (
    -- * REST Resource
      ArchiveInsertResource

    -- * Creating a Request
    , archiveInsert'
    , ArchiveInsert'

    -- * Request Lenses
    , aiMedia
    , aiGroupId
    ) where

import           Network.Google.GroupsMigration.Types
import           Network.Google.Prelude

-- | A resource alias for @GroupsmigrationArchiveInsert@ method which the
-- 'ArchiveInsert'' request conforms to.
type ArchiveInsertResource =
     Capture "groupId" Text :>
       "archive" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[OctetStream] Body :> Post '[JSON] Groups

-- | Inserts a new mail into the archive of the Google group.
--
-- /See:/ 'archiveInsert'' smart constructor.
data ArchiveInsert' = ArchiveInsert'
    { _aiMedia   :: !Body
    , _aiGroupId :: !Text
    }

-- | Creates a value of 'ArchiveInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiMedia'
--
-- * 'aiGroupId'
archiveInsert'
    :: Body -- ^ 'media'
    -> Text -- ^ 'groupId'
    -> ArchiveInsert'
archiveInsert' pAiMedia_ pAiGroupId_ =
    ArchiveInsert'
    { _aiMedia = pAiMedia_
    , _aiGroupId = pAiGroupId_
    }

aiMedia :: Lens' ArchiveInsert' Body
aiMedia = lens _aiMedia (\ s a -> s{_aiMedia = a})

-- | The group ID
aiGroupId :: Lens' ArchiveInsert' Text
aiGroupId
  = lens _aiGroupId (\ s a -> s{_aiGroupId = a})

instance GoogleRequest ArchiveInsert' where
        type Rs ArchiveInsert' = Groups
        requestClient ArchiveInsert'{..}
          = go _aiGroupId (Just AltJSON) _aiMedia
              groupsMigrationService
          where go
                  = buildClient (Proxy :: Proxy ArchiveInsertResource)
                      mempty
