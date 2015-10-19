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
-- Copyright   : (c) 2015 Brendan Hay
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
    , childrenInsert'
    , ChildrenInsert'

    -- * Request Lenses
    , chiFolderId
    , chiPayload
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.children.insert@ method which the
-- 'ChildrenInsert'' request conforms to.
type ChildrenInsertResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ChildReference :>
               Post '[JSON] ChildReference

-- | Inserts a file into a folder.
--
-- /See:/ 'childrenInsert'' smart constructor.
data ChildrenInsert' = ChildrenInsert'
    { _chiFolderId :: !Text
    , _chiPayload  :: !ChildReference
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chiFolderId'
--
-- * 'chiPayload'
childrenInsert'
    :: Text -- ^ 'chiFolderId'
    -> ChildReference -- ^ 'chiPayload'
    -> ChildrenInsert'
childrenInsert' pChiFolderId_ pChiPayload_ =
    ChildrenInsert'
    { _chiFolderId = pChiFolderId_
    , _chiPayload = pChiPayload_
    }

-- | The ID of the folder.
chiFolderId :: Lens' ChildrenInsert' Text
chiFolderId
  = lens _chiFolderId (\ s a -> s{_chiFolderId = a})

-- | Multipart request metadata.
chiPayload :: Lens' ChildrenInsert' ChildReference
chiPayload
  = lens _chiPayload (\ s a -> s{_chiPayload = a})

instance GoogleRequest ChildrenInsert' where
        type Rs ChildrenInsert' = ChildReference
        requestClient ChildrenInsert'{..}
          = go _chiFolderId (Just AltJSON) _chiPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChildrenInsertResource)
                      mempty
