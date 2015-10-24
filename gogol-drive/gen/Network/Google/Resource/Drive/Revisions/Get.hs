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
-- Module      : Network.Google.Resource.Drive.Revisions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.get@.
module Network.Google.Resource.Drive.Revisions.Get
    (
    -- * REST Resource
      RevisionsGetResource

    -- * Creating a Request
    , revisionsGet
    , RevisionsGet

    -- * Request Lenses
    , rggFileId
    , rggRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.revisions.get@ method which the
-- 'RevisionsGet' request conforms to.
type RevisionsGetResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "revisions" :>
               Capture "revisionId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Revision

-- | Gets a specific revision.
--
-- /See:/ 'revisionsGet' smart constructor.
data RevisionsGet = RevisionsGet
    { _rggFileId     :: !Text
    , _rggRevisionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggFileId'
--
-- * 'rggRevisionId'
revisionsGet
    :: Text -- ^ 'rggFileId'
    -> Text -- ^ 'rggRevisionId'
    -> RevisionsGet
revisionsGet pRggFileId_ pRggRevisionId_ =
    RevisionsGet
    { _rggFileId = pRggFileId_
    , _rggRevisionId = pRggRevisionId_
    }

-- | The ID of the file.
rggFileId :: Lens' RevisionsGet Text
rggFileId
  = lens _rggFileId (\ s a -> s{_rggFileId = a})

-- | The ID of the revision.
rggRevisionId :: Lens' RevisionsGet Text
rggRevisionId
  = lens _rggRevisionId
      (\ s a -> s{_rggRevisionId = a})

instance GoogleRequest RevisionsGet where
        type Rs RevisionsGet = Revision
        requestClient RevisionsGet{..}
          = go _rggFileId _rggRevisionId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy RevisionsGetResource)
                      mempty
