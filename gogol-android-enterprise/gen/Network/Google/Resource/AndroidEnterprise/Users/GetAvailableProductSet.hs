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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the set of products a user is entitled to access.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseUsersGetAvailableProductSet@.
module Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
    (
    -- * REST Resource
      UsersGetAvailableProductSetResource

    -- * Creating a Request
    , usersGetAvailableProductSet'
    , UsersGetAvailableProductSet'

    -- * Request Lenses
    , ugapsEnterpriseId
    , ugapsUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseUsersGetAvailableProductSet@ method which the
-- 'UsersGetAvailableProductSet'' request conforms to.
type UsersGetAvailableProductSetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "availableProductSet" :>
               QueryParam "alt" AltJSON :> Get '[JSON] ProductSet

-- | Retrieves the set of products a user is entitled to access.
--
-- /See:/ 'usersGetAvailableProductSet'' smart constructor.
data UsersGetAvailableProductSet' = UsersGetAvailableProductSet'
    { _ugapsEnterpriseId :: !Text
    , _ugapsUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGetAvailableProductSet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugapsEnterpriseId'
--
-- * 'ugapsUserId'
usersGetAvailableProductSet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersGetAvailableProductSet'
usersGetAvailableProductSet' pUgapsEnterpriseId_ pUgapsUserId_ =
    UsersGetAvailableProductSet'
    { _ugapsEnterpriseId = pUgapsEnterpriseId_
    , _ugapsUserId = pUgapsUserId_
    }

-- | The ID of the enterprise.
ugapsEnterpriseId :: Lens' UsersGetAvailableProductSet' Text
ugapsEnterpriseId
  = lens _ugapsEnterpriseId
      (\ s a -> s{_ugapsEnterpriseId = a})

-- | The ID of the user.
ugapsUserId :: Lens' UsersGetAvailableProductSet' Text
ugapsUserId
  = lens _ugapsUserId (\ s a -> s{_ugapsUserId = a})

instance GoogleRequest UsersGetAvailableProductSet'
         where
        type Rs UsersGetAvailableProductSet' = ProductSet
        requestClient UsersGetAvailableProductSet'{..}
          = go _ugapsEnterpriseId _ugapsUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersGetAvailableProductSetResource)
                      mempty
