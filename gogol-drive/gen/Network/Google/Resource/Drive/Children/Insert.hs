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
-- Module      : Network.Google.Resource.Drive.Children.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a file into a folder.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.children.insert@.
module Network.Google.Resource.Drive.Children.Insert
    (
    -- * REST Resource
      ChildrenInsertResource

    -- * Creating a Request
    , childrenInsert
    , ChildrenInsert

    -- * Request Lenses
    , ciFolderId
    , ciPayload
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.children.insert@ method which the
-- 'ChildrenInsert' request conforms to.
type ChildrenInsertResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "folderId" Text :>
             "children" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ChildReference :>
                   Post '[JSON] ChildReference

-- | Inserts a file into a folder.
--
-- /See:/ 'childrenInsert' smart constructor.
data ChildrenInsert = ChildrenInsert
    { _ciFolderId :: !Text
    , _ciPayload  :: !ChildReference
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciFolderId'
--
-- * 'ciPayload'
childrenInsert
    :: Text -- ^ 'ciFolderId'
    -> ChildReference -- ^ 'ciPayload'
    -> ChildrenInsert
childrenInsert pCiFolderId_ pCiPayload_ =
    ChildrenInsert
    { _ciFolderId = pCiFolderId_
    , _ciPayload = pCiPayload_
    }

-- | The ID of the folder.
ciFolderId :: Lens' ChildrenInsert Text
ciFolderId
  = lens _ciFolderId (\ s a -> s{_ciFolderId = a})

-- | Multipart request metadata.
ciPayload :: Lens' ChildrenInsert ChildReference
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest ChildrenInsert where
        type Rs ChildrenInsert = ChildReference
        type Scopes ChildrenInsert =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient ChildrenInsert{..}
          = go _ciFolderId (Just AltJSON) _ciPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChildrenInsertResource)
                      mempty
