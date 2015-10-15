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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific parent reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsGet@.
module Network.Google.Resource.Drive.Parents.Get
    (
    -- * REST Resource
      ParentsGetResource

    -- * Creating a Request
    , parentsGet'
    , ParentsGet'

    -- * Request Lenses
    , paraFileId
    , paraParentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsGet@ method which the
-- 'ParentsGet'' request conforms to.
type ParentsGetResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           Capture "parentId" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ParentReference

-- | Gets a specific parent reference.
--
-- /See:/ 'parentsGet'' smart constructor.
data ParentsGet' = ParentsGet'
    { _paraFileId   :: !Text
    , _paraParentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paraFileId'
--
-- * 'paraParentId'
parentsGet'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsGet'
parentsGet' pParaFileId_ pParaParentId_ =
    ParentsGet'
    { _paraFileId = pParaFileId_
    , _paraParentId = pParaParentId_
    }

-- | The ID of the file.
paraFileId :: Lens' ParentsGet' Text
paraFileId
  = lens _paraFileId (\ s a -> s{_paraFileId = a})

-- | The ID of the parent.
paraParentId :: Lens' ParentsGet' Text
paraParentId
  = lens _paraParentId (\ s a -> s{_paraParentId = a})

instance GoogleRequest ParentsGet' where
        type Rs ParentsGet' = ParentReference
        requestClient ParentsGet'{..}
          = go _paraFileId _paraParentId (Just AltJSON) drive
          where go
                  = buildClient (Proxy :: Proxy ParentsGetResource)
                      mempty
