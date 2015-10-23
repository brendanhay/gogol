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
-- Module      : Network.Google.Resource.Directory.Roles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all the roles in a domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.roles.list@.
module Network.Google.Resource.Directory.Roles.List
    (
    -- * REST Resource
      RolesListResource

    -- * Creating a Request
    , rolesList
    , RolesList

    -- * Request Lenses
    , rlCustomer
    , rlPageToken
    , rlMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.roles.list@ method which the
-- 'RolesList' request conforms to.
type RolesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Roles

-- | Retrieves a paginated list of all the roles in a domain.
--
-- /See:/ 'rolesList' smart constructor.
data RolesList = RolesList
    { _rlCustomer   :: !Text
    , _rlPageToken  :: !(Maybe Text)
    , _rlMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RolesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlCustomer'
--
-- * 'rlPageToken'
--
-- * 'rlMaxResults'
rolesList
    :: Text -- ^ 'rlCustomer'
    -> RolesList
rolesList pRlCustomer_ =
    RolesList
    { _rlCustomer = pRlCustomer_
    , _rlPageToken = Nothing
    , _rlMaxResults = Nothing
    }

-- | Immutable id of the Google Apps account.
rlCustomer :: Lens' RolesList Text
rlCustomer
  = lens _rlCustomer (\ s a -> s{_rlCustomer = a})

-- | Token to specify the next page in the list.
rlPageToken :: Lens' RolesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | Maximum number of results to return.
rlMaxResults :: Lens' RolesList (Maybe Int32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

instance GoogleRequest RolesList where
        type Rs RolesList = Roles
        requestClient RolesList{..}
          = go _rlCustomer _rlPageToken _rlMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesListResource)
                      mempty
