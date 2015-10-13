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
-- Module      : Network.Google.Resource.Drive.Revisions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s revisions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsList@.
module Network.Google.Resource.Drive.Revisions.List
    (
    -- * REST Resource
      RevisionsListResource

    -- * Creating a Request
    , revisionsList'
    , RevisionsList'

    -- * Request Lenses
    , rlFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsList@ method which the
-- 'RevisionsList'' request conforms to.
type RevisionsListResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           QueryParam "alt" AltJSON :> Get '[JSON] RevisionList

-- | Lists a file\'s revisions.
--
-- /See:/ 'revisionsList'' smart constructor.
newtype RevisionsList' = RevisionsList'
    { _rlFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlFileId'
revisionsList'
    :: Text -- ^ 'fileId'
    -> RevisionsList'
revisionsList' pRlFileId_ =
    RevisionsList'
    { _rlFileId = pRlFileId_
    }

-- | The ID of the file.
rlFileId :: Lens' RevisionsList' Text
rlFileId = lens _rlFileId (\ s a -> s{_rlFileId = a})

instance GoogleRequest RevisionsList' where
        type Rs RevisionsList' = RevisionList
        requestClient RevisionsList'{..}
          = go _rlFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy RevisionsListResource)
                      mempty
