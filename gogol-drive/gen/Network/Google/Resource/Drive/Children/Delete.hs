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
-- Module      : Network.Google.Resource.Drive.Children.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a child from a folder.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.children.delete@.
module Network.Google.Resource.Drive.Children.Delete
    (
    -- * REST Resource
      ChildrenDeleteResource

    -- * Creating a Request
    , childrenDelete
    , ChildrenDelete

    -- * Request Lenses
    , cdFolderId
    , cdChildId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.children.delete@ method which the
-- 'ChildrenDelete' request conforms to.
type ChildrenDeleteResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "folderId" Text :>
             "children" :>
               Capture "childId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a child from a folder.
--
-- /See:/ 'childrenDelete' smart constructor.
data ChildrenDelete = ChildrenDelete
    { _cdFolderId :: !Text
    , _cdChildId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdFolderId'
--
-- * 'cdChildId'
childrenDelete
    :: Text -- ^ 'cdFolderId'
    -> Text -- ^ 'cdChildId'
    -> ChildrenDelete
childrenDelete pCdFolderId_ pCdChildId_ =
    ChildrenDelete
    { _cdFolderId = pCdFolderId_
    , _cdChildId = pCdChildId_
    }

-- | The ID of the folder.
cdFolderId :: Lens' ChildrenDelete Text
cdFolderId
  = lens _cdFolderId (\ s a -> s{_cdFolderId = a})

-- | The ID of the child.
cdChildId :: Lens' ChildrenDelete Text
cdChildId
  = lens _cdChildId (\ s a -> s{_cdChildId = a})

instance GoogleRequest ChildrenDelete where
        type Rs ChildrenDelete = ()
        type Scopes ChildrenDelete =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient ChildrenDelete{..}
          = go _cdFolderId _cdChildId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChildrenDeleteResource)
                      mempty
