{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.OrgUnits.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Organization Unit. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsPatch@.
module Network.Google.Resource.Directory.OrgUnits.Patch
    (
    -- * REST Resource
      OrgUnitsPatchResource

    -- * Creating a Request
    , orgUnitsPatch'
    , OrgUnitsPatch'

    -- * Request Lenses
    , oupQuotaUser
    , oupPrettyPrint
    , oupUserIP
    , oupPayload
    , oupOrgUnitPath
    , oupCustomerId
    , oupKey
    , oupOAuthToken
    , oupFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsPatch@ which the
-- 'OrgUnitsPatch'' request conforms to.
type OrgUnitsPatchResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           Captures "orgUnitPath" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] OrgUnit :>
                             Patch '[JSON] OrgUnit

-- | Update Organization Unit. This method supports patch semantics.
--
-- /See:/ 'orgUnitsPatch'' smart constructor.
data OrgUnitsPatch' = OrgUnitsPatch'
    { _oupQuotaUser   :: !(Maybe Text)
    , _oupPrettyPrint :: !Bool
    , _oupUserIP      :: !(Maybe Text)
    , _oupPayload     :: !OrgUnit
    , _oupOrgUnitPath :: ![Text]
    , _oupCustomerId  :: !Text
    , _oupKey         :: !(Maybe Key)
    , _oupOAuthToken  :: !(Maybe OAuthToken)
    , _oupFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oupQuotaUser'
--
-- * 'oupPrettyPrint'
--
-- * 'oupUserIP'
--
-- * 'oupPayload'
--
-- * 'oupOrgUnitPath'
--
-- * 'oupCustomerId'
--
-- * 'oupKey'
--
-- * 'oupOAuthToken'
--
-- * 'oupFields'
orgUnitsPatch'
    :: OrgUnit -- ^ 'payload'
    -> [Text] -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgUnitsPatch'
orgUnitsPatch' pOupPayload_ pOupOrgUnitPath_ pOupCustomerId_ =
    OrgUnitsPatch'
    { _oupQuotaUser = Nothing
    , _oupPrettyPrint = True
    , _oupUserIP = Nothing
    , _oupPayload = pOupPayload_
    , _oupOrgUnitPath = pOupOrgUnitPath_
    , _oupCustomerId = pOupCustomerId_
    , _oupKey = Nothing
    , _oupOAuthToken = Nothing
    , _oupFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oupQuotaUser :: Lens' OrgUnitsPatch' (Maybe Text)
oupQuotaUser
  = lens _oupQuotaUser (\ s a -> s{_oupQuotaUser = a})

-- | Returns response with indentations and line breaks.
oupPrettyPrint :: Lens' OrgUnitsPatch' Bool
oupPrettyPrint
  = lens _oupPrettyPrint
      (\ s a -> s{_oupPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oupUserIP :: Lens' OrgUnitsPatch' (Maybe Text)
oupUserIP
  = lens _oupUserIP (\ s a -> s{_oupUserIP = a})

-- | Multipart request metadata.
oupPayload :: Lens' OrgUnitsPatch' OrgUnit
oupPayload
  = lens _oupPayload (\ s a -> s{_oupPayload = a})

-- | Full path of the organization unit or its Id
oupOrgUnitPath :: Lens' OrgUnitsPatch' [Text]
oupOrgUnitPath
  = lens _oupOrgUnitPath
      (\ s a -> s{_oupOrgUnitPath = a})
      . _Coerce

-- | Immutable id of the Google Apps account
oupCustomerId :: Lens' OrgUnitsPatch' Text
oupCustomerId
  = lens _oupCustomerId
      (\ s a -> s{_oupCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oupKey :: Lens' OrgUnitsPatch' (Maybe Key)
oupKey = lens _oupKey (\ s a -> s{_oupKey = a})

-- | OAuth 2.0 token for the current user.
oupOAuthToken :: Lens' OrgUnitsPatch' (Maybe OAuthToken)
oupOAuthToken
  = lens _oupOAuthToken
      (\ s a -> s{_oupOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oupFields :: Lens' OrgUnitsPatch' (Maybe Text)
oupFields
  = lens _oupFields (\ s a -> s{_oupFields = a})

instance GoogleAuth OrgUnitsPatch' where
        authKey = oupKey . _Just
        authToken = oupOAuthToken . _Just

instance GoogleRequest OrgUnitsPatch' where
        type Rs OrgUnitsPatch' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgUnitsPatch'{..}
          = go _oupCustomerId _oupOrgUnitPath _oupQuotaUser
              (Just _oupPrettyPrint)
              _oupUserIP
              _oupFields
              _oupKey
              _oupOAuthToken
              (Just AltJSON)
              _oupPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrgUnitsPatchResource)
                      r
                      u
