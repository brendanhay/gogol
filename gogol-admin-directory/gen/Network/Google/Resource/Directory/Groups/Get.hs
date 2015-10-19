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
-- Module      : Network.Google.Resource.Directory.Groups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.groups.get@.
module Network.Google.Resource.Directory.Groups.Get
    (
    -- * REST Resource
      GroupsGetResource

    -- * Creating a Request
    , groupsGet'
    , GroupsGet'

    -- * Request Lenses
    , ggGroupKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.groups.get@ method which the
-- 'GroupsGet'' request conforms to.
type GroupsGetResource =
     "groups" :>
       Capture "groupKey" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Group

-- | Retrieve Group
--
-- /See:/ 'groupsGet'' smart constructor.
newtype GroupsGet' = GroupsGet'
    { _ggGroupKey :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggGroupKey'
groupsGet'
    :: Text -- ^ 'ggGroupKey'
    -> GroupsGet'
groupsGet' pGgGroupKey_ =
    GroupsGet'
    { _ggGroupKey = pGgGroupKey_
    }

-- | Email or immutable Id of the group
ggGroupKey :: Lens' GroupsGet' Text
ggGroupKey
  = lens _ggGroupKey (\ s a -> s{_ggGroupKey = a})

instance GoogleRequest GroupsGet' where
        type Rs GroupsGet' = Group
        requestClient GroupsGet'{..}
          = go _ggGroupKey (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsGetResource)
                      mempty
