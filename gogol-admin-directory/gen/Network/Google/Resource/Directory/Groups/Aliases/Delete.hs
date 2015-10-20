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
-- Module      : Network.Google.Resource.Directory.Groups.Aliases.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove a alias for the group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.groups.aliases.delete@.
module Network.Google.Resource.Directory.Groups.Aliases.Delete
    (
    -- * REST Resource
      GroupsAliasesDeleteResource

    -- * Creating a Request
    , groupsAliasesDelete
    , GroupsAliasesDelete

    -- * Request Lenses
    , gadGroupKey
    , gadAlias
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.groups.aliases.delete@ method which the
-- 'GroupsAliasesDelete' request conforms to.
type GroupsAliasesDeleteResource =
     "groups" :>
       Capture "groupKey" Text :>
         "aliases" :>
           Capture "alias" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove a alias for the group
--
-- /See:/ 'groupsAliasesDelete' smart constructor.
data GroupsAliasesDelete = GroupsAliasesDelete
    { _gadGroupKey :: !Text
    , _gadAlias    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadGroupKey'
--
-- * 'gadAlias'
groupsAliasesDelete
    :: Text -- ^ 'gadGroupKey'
    -> Text -- ^ 'gadAlias'
    -> GroupsAliasesDelete
groupsAliasesDelete pGadGroupKey_ pGadAlias_ =
    GroupsAliasesDelete
    { _gadGroupKey = pGadGroupKey_
    , _gadAlias = pGadAlias_
    }

-- | Email or immutable Id of the group
gadGroupKey :: Lens' GroupsAliasesDelete Text
gadGroupKey
  = lens _gadGroupKey (\ s a -> s{_gadGroupKey = a})

-- | The alias to be removed
gadAlias :: Lens' GroupsAliasesDelete Text
gadAlias = lens _gadAlias (\ s a -> s{_gadAlias = a})

instance GoogleRequest GroupsAliasesDelete where
        type Rs GroupsAliasesDelete = ()
        requestClient GroupsAliasesDelete{..}
          = go _gadGroupKey _gadAlias (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsAliasesDeleteResource)
                      mempty
