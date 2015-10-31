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
-- Module      : Network.Google.Resource.Drive.Parents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s parents.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.parents.list@.
module Network.Google.Resource.Drive.Parents.List
    (
    -- * REST Resource
      ParentsListResource

    -- * Creating a Request
    , parentsList
    , ParentsList

    -- * Request Lenses
    , parFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.parents.list@ method which the
-- 'ParentsList' request conforms to.
type ParentsListResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "parents" :>
               QueryParam "alt" AltJSON :> Get '[JSON] ParentList

-- | Lists a file\'s parents.
--
-- /See:/ 'parentsList' smart constructor.
newtype ParentsList = ParentsList
    { _parFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parFileId'
parentsList
    :: Text -- ^ 'parFileId'
    -> ParentsList
parentsList pParFileId_ =
    ParentsList
    { _parFileId = pParFileId_
    }

-- | The ID of the file.
parFileId :: Lens' ParentsList Text
parFileId
  = lens _parFileId (\ s a -> s{_parFileId = a})

instance GoogleRequest ParentsList where
        type Rs ParentsList = ParentList
        type Scopes ParentsList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient ParentsList{..}
          = go _parFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy ParentsListResource)
                      mempty
