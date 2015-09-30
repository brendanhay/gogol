{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Orgunits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgunitsGet@.
module Directory.Orgunits.Get
    (
    -- * REST Resource
      OrgunitsGetAPI

    -- * Creating a Request
    , orgunitsGet
    , OrgunitsGet

    -- * Request Lenses
    , ogQuotaUser
    , ogPrettyPrint
    , ogUserIp
    , ogOrgUnitPath
    , ogCustomerId
    , ogKey
    , ogOauthToken
    , ogFields
    , ogAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgunitsGet@ which the
-- 'OrgunitsGet' request conforms to.
type OrgunitsGetAPI =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits{" :> "orgUnitPath*}" :> Get '[JSON] OrgUnit

-- | Retrieve Organization Unit
--
-- /See:/ 'orgunitsGet' smart constructor.
data OrgunitsGet = OrgunitsGet
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogPrettyPrint :: !Bool
    , _ogUserIp      :: !(Maybe Text)
    , _ogOrgUnitPath :: !Text
    , _ogCustomerId  :: !Text
    , _ogKey         :: !(Maybe Text)
    , _ogOauthToken  :: !(Maybe Text)
    , _ogFields      :: !(Maybe Text)
    , _ogAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgunitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUserIp'
--
-- * 'ogOrgUnitPath'
--
-- * 'ogCustomerId'
--
-- * 'ogKey'
--
-- * 'ogOauthToken'
--
-- * 'ogFields'
--
-- * 'ogAlt'
orgunitsGet
    :: Text -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgunitsGet
orgunitsGet pOgOrgUnitPath_ pOgCustomerId_ =
    OrgunitsGet
    { _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogUserIp = Nothing
    , _ogOrgUnitPath = pOgOrgUnitPath_
    , _ogCustomerId = pOgCustomerId_
    , _ogKey = Nothing
    , _ogOauthToken = Nothing
    , _ogFields = Nothing
    , _ogAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OrgunitsGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OrgunitsGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIp :: Lens' OrgunitsGet' (Maybe Text)
ogUserIp = lens _ogUserIp (\ s a -> s{_ogUserIp = a})

-- | Full path of the organization unit or its Id
ogOrgUnitPath :: Lens' OrgunitsGet' Text
ogOrgUnitPath
  = lens _ogOrgUnitPath
      (\ s a -> s{_ogOrgUnitPath = a})

-- | Immutable id of the Google Apps account
ogCustomerId :: Lens' OrgunitsGet' Text
ogCustomerId
  = lens _ogCustomerId (\ s a -> s{_ogCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrgunitsGet' (Maybe Text)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOauthToken :: Lens' OrgunitsGet' (Maybe Text)
ogOauthToken
  = lens _ogOauthToken (\ s a -> s{_ogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrgunitsGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | Data format for the response.
ogAlt :: Lens' OrgunitsGet' Text
ogAlt = lens _ogAlt (\ s a -> s{_ogAlt = a})

instance GoogleRequest OrgunitsGet' where
        type Rs OrgunitsGet' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgunitsGet{..}
          = go _ogQuotaUser _ogPrettyPrint _ogUserIp
              _ogOrgUnitPath
              _ogCustomerId
              _ogKey
              _ogOauthToken
              _ogFields
              _ogAlt
          where go
                  = clientWithRoute (Proxy :: Proxy OrgunitsGetAPI) r u
