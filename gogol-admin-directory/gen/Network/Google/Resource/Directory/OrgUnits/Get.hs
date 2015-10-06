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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsGet@.
module Network.Google.Resource.Directory.OrgUnits.Get
    (
    -- * REST Resource
      OrgUnitsGetResource

    -- * Creating a Request
    , orgUnitsGet'
    , OrgUnitsGet'

    -- * Request Lenses
    , ougQuotaUser
    , ougPrettyPrint
    , ougUserIP
    , ougOrgUnitPath
    , ougCustomerId
    , ougKey
    , ougOAuthToken
    , ougFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsGet@ which the
-- 'OrgUnitsGet'' request conforms to.
type OrgUnitsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] OrgUnit

-- | Retrieve Organization Unit
--
-- /See:/ 'orgUnitsGet'' smart constructor.
data OrgUnitsGet' = OrgUnitsGet'
    { _ougQuotaUser   :: !(Maybe Text)
    , _ougPrettyPrint :: !Bool
    , _ougUserIP      :: !(Maybe Text)
    , _ougOrgUnitPath :: ![Text]
    , _ougCustomerId  :: !Text
    , _ougKey         :: !(Maybe AuthKey)
    , _ougOAuthToken  :: !(Maybe OAuthToken)
    , _ougFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ougQuotaUser'
--
-- * 'ougPrettyPrint'
--
-- * 'ougUserIP'
--
-- * 'ougOrgUnitPath'
--
-- * 'ougCustomerId'
--
-- * 'ougKey'
--
-- * 'ougOAuthToken'
--
-- * 'ougFields'
orgUnitsGet'
    :: [Text] -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgUnitsGet'
orgUnitsGet' pOugOrgUnitPath_ pOugCustomerId_ =
    OrgUnitsGet'
    { _ougQuotaUser = Nothing
    , _ougPrettyPrint = True
    , _ougUserIP = Nothing
    , _ougOrgUnitPath = pOugOrgUnitPath_
    , _ougCustomerId = pOugCustomerId_
    , _ougKey = Nothing
    , _ougOAuthToken = Nothing
    , _ougFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ougQuotaUser :: Lens' OrgUnitsGet' (Maybe Text)
ougQuotaUser
  = lens _ougQuotaUser (\ s a -> s{_ougQuotaUser = a})

-- | Returns response with indentations and line breaks.
ougPrettyPrint :: Lens' OrgUnitsGet' Bool
ougPrettyPrint
  = lens _ougPrettyPrint
      (\ s a -> s{_ougPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ougUserIP :: Lens' OrgUnitsGet' (Maybe Text)
ougUserIP
  = lens _ougUserIP (\ s a -> s{_ougUserIP = a})

-- | Full path of the organization unit or its Id
ougOrgUnitPath :: Lens' OrgUnitsGet' [Text]
ougOrgUnitPath
  = lens _ougOrgUnitPath
      (\ s a -> s{_ougOrgUnitPath = a})
      . _Coerce

-- | Immutable id of the Google Apps account
ougCustomerId :: Lens' OrgUnitsGet' Text
ougCustomerId
  = lens _ougCustomerId
      (\ s a -> s{_ougCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ougKey :: Lens' OrgUnitsGet' (Maybe AuthKey)
ougKey = lens _ougKey (\ s a -> s{_ougKey = a})

-- | OAuth 2.0 token for the current user.
ougOAuthToken :: Lens' OrgUnitsGet' (Maybe OAuthToken)
ougOAuthToken
  = lens _ougOAuthToken
      (\ s a -> s{_ougOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ougFields :: Lens' OrgUnitsGet' (Maybe Text)
ougFields
  = lens _ougFields (\ s a -> s{_ougFields = a})

instance GoogleAuth OrgUnitsGet' where
        _AuthKey = ougKey . _Just
        _AuthToken = ougOAuthToken . _Just

instance GoogleRequest OrgUnitsGet' where
        type Rs OrgUnitsGet' = OrgUnit
        request = requestWith directoryRequest
        requestWith rq OrgUnitsGet'{..}
          = go _ougCustomerId _ougOrgUnitPath _ougQuotaUser
              (Just _ougPrettyPrint)
              _ougUserIP
              _ougFields
              _ougKey
              _ougOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy OrgUnitsGetResource) rq
