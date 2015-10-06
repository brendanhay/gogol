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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsInsert@.
module Network.Google.Resource.Directory.OrgUnits.Insert
    (
    -- * REST Resource
      OrgUnitsInsertResource

    -- * Creating a Request
    , orgUnitsInsert'
    , OrgUnitsInsert'

    -- * Request Lenses
    , ouiQuotaUser
    , ouiPrettyPrint
    , ouiUserIP
    , ouiPayload
    , ouiCustomerId
    , ouiKey
    , ouiOAuthToken
    , ouiFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsInsert@ which the
-- 'OrgUnitsInsert'' request conforms to.
type OrgUnitsInsertResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] OrgUnit :> Post '[JSON] OrgUnit

-- | Add Organization Unit
--
-- /See:/ 'orgUnitsInsert'' smart constructor.
data OrgUnitsInsert' = OrgUnitsInsert'
    { _ouiQuotaUser   :: !(Maybe Text)
    , _ouiPrettyPrint :: !Bool
    , _ouiUserIP      :: !(Maybe Text)
    , _ouiPayload     :: !OrgUnit
    , _ouiCustomerId  :: !Text
    , _ouiKey         :: !(Maybe AuthKey)
    , _ouiOAuthToken  :: !(Maybe OAuthToken)
    , _ouiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouiQuotaUser'
--
-- * 'ouiPrettyPrint'
--
-- * 'ouiUserIP'
--
-- * 'ouiPayload'
--
-- * 'ouiCustomerId'
--
-- * 'ouiKey'
--
-- * 'ouiOAuthToken'
--
-- * 'ouiFields'
orgUnitsInsert'
    :: OrgUnit -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> OrgUnitsInsert'
orgUnitsInsert' pOuiPayload_ pOuiCustomerId_ =
    OrgUnitsInsert'
    { _ouiQuotaUser = Nothing
    , _ouiPrettyPrint = True
    , _ouiUserIP = Nothing
    , _ouiPayload = pOuiPayload_
    , _ouiCustomerId = pOuiCustomerId_
    , _ouiKey = Nothing
    , _ouiOAuthToken = Nothing
    , _ouiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouiQuotaUser :: Lens' OrgUnitsInsert' (Maybe Text)
ouiQuotaUser
  = lens _ouiQuotaUser (\ s a -> s{_ouiQuotaUser = a})

-- | Returns response with indentations and line breaks.
ouiPrettyPrint :: Lens' OrgUnitsInsert' Bool
ouiPrettyPrint
  = lens _ouiPrettyPrint
      (\ s a -> s{_ouiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouiUserIP :: Lens' OrgUnitsInsert' (Maybe Text)
ouiUserIP
  = lens _ouiUserIP (\ s a -> s{_ouiUserIP = a})

-- | Multipart request metadata.
ouiPayload :: Lens' OrgUnitsInsert' OrgUnit
ouiPayload
  = lens _ouiPayload (\ s a -> s{_ouiPayload = a})

-- | Immutable id of the Google Apps account
ouiCustomerId :: Lens' OrgUnitsInsert' Text
ouiCustomerId
  = lens _ouiCustomerId
      (\ s a -> s{_ouiCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouiKey :: Lens' OrgUnitsInsert' (Maybe AuthKey)
ouiKey = lens _ouiKey (\ s a -> s{_ouiKey = a})

-- | OAuth 2.0 token for the current user.
ouiOAuthToken :: Lens' OrgUnitsInsert' (Maybe OAuthToken)
ouiOAuthToken
  = lens _ouiOAuthToken
      (\ s a -> s{_ouiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ouiFields :: Lens' OrgUnitsInsert' (Maybe Text)
ouiFields
  = lens _ouiFields (\ s a -> s{_ouiFields = a})

instance GoogleAuth OrgUnitsInsert' where
        authKey = ouiKey . _Just
        authToken = ouiOAuthToken . _Just

instance GoogleRequest OrgUnitsInsert' where
        type Rs OrgUnitsInsert' = OrgUnit
        request = requestWith directoryRequest
        requestWith rq OrgUnitsInsert'{..}
          = go _ouiCustomerId _ouiQuotaUser
              (Just _ouiPrettyPrint)
              _ouiUserIP
              _ouiFields
              _ouiKey
              _ouiOAuthToken
              (Just AltJSON)
              _ouiPayload
          where go
                  = clientBuild (Proxy :: Proxy OrgUnitsInsertResource)
                      rq
