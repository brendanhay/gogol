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
-- Module      : Network.Google.Resource.Drive.Children.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific child reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenGet@.
module Network.Google.Resource.Drive.Children.Get
    (
    -- * REST Resource
      ChildrenGetResource

    -- * Creating a Request
    , childrenGet'
    , ChildrenGet'

    -- * Request Lenses
    , cgFolderId
    , cgChildId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenGet@ method which the
-- 'ChildrenGet'' request conforms to.
type ChildrenGetResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           Capture "childId" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ChildReference

-- | Gets a specific child reference.
--
-- /See:/ 'childrenGet'' smart constructor.
data ChildrenGet' = ChildrenGet'
    { _cgFolderId :: !Text
    , _cgChildId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgFolderId'
--
-- * 'cgChildId'
childrenGet'
    :: Text -- ^ 'folderId'
    -> Text -- ^ 'childId'
    -> ChildrenGet'
childrenGet' pCgFolderId_ pCgChildId_ =
    ChildrenGet'
    { _cgFolderId = pCgFolderId_
    , _cgChildId = pCgChildId_
    }

-- | The ID of the folder.
cgFolderId :: Lens' ChildrenGet' Text
cgFolderId
  = lens _cgFolderId (\ s a -> s{_cgFolderId = a})

-- | The ID of the child.
cgChildId :: Lens' ChildrenGet' Text
cgChildId
  = lens _cgChildId (\ s a -> s{_cgChildId = a})

instance GoogleRequest ChildrenGet' where
        type Rs ChildrenGet' = ChildReference
        requestClient ChildrenGet'{..}
          = go _cgFolderId _cgChildId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChildrenGetResource)
                      mempty
