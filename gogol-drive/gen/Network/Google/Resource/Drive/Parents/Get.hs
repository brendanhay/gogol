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
-- Module      : Network.Google.Resource.Drive.Parents.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific parent reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.parents.get@.
module Network.Google.Resource.Drive.Parents.Get
    (
    -- * REST Resource
      ParentsGetResource

    -- * Creating a Request
    , parentsGet
    , ParentsGet

    -- * Request Lenses
    , pg1FileId
    , pg1ParentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.parents.get@ method which the
-- 'ParentsGet' request conforms to.
type ParentsGetResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "parents" :>
               Capture "parentId" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ParentReference

-- | Gets a specific parent reference.
--
-- /See:/ 'parentsGet' smart constructor.
data ParentsGet = ParentsGet
    { _pg1FileId   :: !Text
    , _pg1ParentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pg1FileId'
--
-- * 'pg1ParentId'
parentsGet
    :: Text -- ^ 'pg1FileId'
    -> Text -- ^ 'pg1ParentId'
    -> ParentsGet
parentsGet pPg1FileId_ pPg1ParentId_ =
    ParentsGet
    { _pg1FileId = pPg1FileId_
    , _pg1ParentId = pPg1ParentId_
    }

-- | The ID of the file.
pg1FileId :: Lens' ParentsGet Text
pg1FileId
  = lens _pg1FileId (\ s a -> s{_pg1FileId = a})

-- | The ID of the parent.
pg1ParentId :: Lens' ParentsGet Text
pg1ParentId
  = lens _pg1ParentId (\ s a -> s{_pg1ParentId = a})

instance GoogleRequest ParentsGet where
        type Rs ParentsGet = ParentReference
        type Scopes ParentsGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient ParentsGet{..}
          = go _pg1FileId _pg1ParentId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ParentsGetResource)
                      mempty
