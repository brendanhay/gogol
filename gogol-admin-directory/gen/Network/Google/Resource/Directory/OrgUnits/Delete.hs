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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsDelete@.
module Network.Google.Resource.Directory.OrgUnits.Delete
    (
    -- * REST Resource
      OrgUnitsDeleteResource

    -- * Creating a Request
    , orgUnitsDelete'
    , OrgUnitsDelete'

    -- * Request Lenses
    , oudQuotaUser
    , oudPrettyPrint
    , oudUserIP
    , oudOrgUnitPath
    , oudCustomerId
    , oudKey
    , oudOAuthToken
    , oudFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsDelete@ which the
-- 'OrgUnitsDelete'' request conforms to.
type OrgUnitsDeleteResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           Captures "orgUnitPath" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove Organization Unit
--
-- /See:/ 'orgUnitsDelete'' smart constructor.
data OrgUnitsDelete' = OrgUnitsDelete'
    { _oudQuotaUser   :: !(Maybe Text)
    , _oudPrettyPrint :: !Bool
    , _oudUserIP      :: !(Maybe Text)
    , _oudOrgUnitPath :: ![Text]
    , _oudCustomerId  :: !Text
    , _oudKey         :: !(Maybe AuthKey)
    , _oudOAuthToken  :: !(Maybe OAuthToken)
    , _oudFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oudQuotaUser'
--
-- * 'oudPrettyPrint'
--
-- * 'oudUserIP'
--
-- * 'oudOrgUnitPath'
--
-- * 'oudCustomerId'
--
-- * 'oudKey'
--
-- * 'oudOAuthToken'
--
-- * 'oudFields'
orgUnitsDelete'
    :: [Text] -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgUnitsDelete'
orgUnitsDelete' pOudOrgUnitPath_ pOudCustomerId_ =
    OrgUnitsDelete'
    { _oudQuotaUser = Nothing
    , _oudPrettyPrint = True
    , _oudUserIP = Nothing
    , _oudOrgUnitPath = pOudOrgUnitPath_
    , _oudCustomerId = pOudCustomerId_
    , _oudKey = Nothing
    , _oudOAuthToken = Nothing
    , _oudFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oudQuotaUser :: Lens' OrgUnitsDelete' (Maybe Text)
oudQuotaUser
  = lens _oudQuotaUser (\ s a -> s{_oudQuotaUser = a})

-- | Returns response with indentations and line breaks.
oudPrettyPrint :: Lens' OrgUnitsDelete' Bool
oudPrettyPrint
  = lens _oudPrettyPrint
      (\ s a -> s{_oudPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oudUserIP :: Lens' OrgUnitsDelete' (Maybe Text)
oudUserIP
  = lens _oudUserIP (\ s a -> s{_oudUserIP = a})

-- | Full path of the organization unit or its Id
oudOrgUnitPath :: Lens' OrgUnitsDelete' [Text]
oudOrgUnitPath
  = lens _oudOrgUnitPath
      (\ s a -> s{_oudOrgUnitPath = a})
      . _Coerce

-- | Immutable id of the Google Apps account
oudCustomerId :: Lens' OrgUnitsDelete' Text
oudCustomerId
  = lens _oudCustomerId
      (\ s a -> s{_oudCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oudKey :: Lens' OrgUnitsDelete' (Maybe AuthKey)
oudKey = lens _oudKey (\ s a -> s{_oudKey = a})

-- | OAuth 2.0 token for the current user.
oudOAuthToken :: Lens' OrgUnitsDelete' (Maybe OAuthToken)
oudOAuthToken
  = lens _oudOAuthToken
      (\ s a -> s{_oudOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oudFields :: Lens' OrgUnitsDelete' (Maybe Text)
oudFields
  = lens _oudFields (\ s a -> s{_oudFields = a})

instance GoogleAuth OrgUnitsDelete' where
        authKey = oudKey . _Just
        authToken = oudOAuthToken . _Just

instance GoogleRequest OrgUnitsDelete' where
        type Rs OrgUnitsDelete' = ()
        request = requestWith directoryRequest
        requestWith rq OrgUnitsDelete'{..}
          = go _oudCustomerId _oudOrgUnitPath _oudQuotaUser
              (Just _oudPrettyPrint)
              _oudUserIP
              _oudFields
              _oudKey
              _oudOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy OrgUnitsDeleteResource)
                      rq
