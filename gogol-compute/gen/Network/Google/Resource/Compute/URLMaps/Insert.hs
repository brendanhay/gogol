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
-- Module      : Network.Google.Resource.Compute.URLMaps.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsInsert@.
module Network.Google.Resource.Compute.URLMaps.Insert
    (
    -- * REST Resource
      URLMapsInsertResource

    -- * Creating a Request
    , urlMapsInsert'
    , URLMapsInsert'

    -- * Request Lenses
    , umiQuotaUser
    , umiPrettyPrint
    , umiProject
    , umiUserIP
    , umiPayload
    , umiKey
    , umiOAuthToken
    , umiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsInsert@ method which the
-- 'URLMapsInsert'' request conforms to.
type URLMapsInsertResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] URLMap :> Post '[JSON] Operation

-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'urlMapsInsert'' smart constructor.
data URLMapsInsert' = URLMapsInsert'
    { _umiQuotaUser   :: !(Maybe Text)
    , _umiPrettyPrint :: !Bool
    , _umiProject     :: !Text
    , _umiUserIP      :: !(Maybe Text)
    , _umiPayload     :: !URLMap
    , _umiKey         :: !(Maybe AuthKey)
    , _umiOAuthToken  :: !(Maybe OAuthToken)
    , _umiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiQuotaUser'
--
-- * 'umiPrettyPrint'
--
-- * 'umiProject'
--
-- * 'umiUserIP'
--
-- * 'umiPayload'
--
-- * 'umiKey'
--
-- * 'umiOAuthToken'
--
-- * 'umiFields'
urlMapsInsert'
    :: Text -- ^ 'project'
    -> URLMap -- ^ 'payload'
    -> URLMapsInsert'
urlMapsInsert' pUmiProject_ pUmiPayload_ =
    URLMapsInsert'
    { _umiQuotaUser = Nothing
    , _umiPrettyPrint = True
    , _umiProject = pUmiProject_
    , _umiUserIP = Nothing
    , _umiPayload = pUmiPayload_
    , _umiKey = Nothing
    , _umiOAuthToken = Nothing
    , _umiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umiQuotaUser :: Lens' URLMapsInsert' (Maybe Text)
umiQuotaUser
  = lens _umiQuotaUser (\ s a -> s{_umiQuotaUser = a})

-- | Returns response with indentations and line breaks.
umiPrettyPrint :: Lens' URLMapsInsert' Bool
umiPrettyPrint
  = lens _umiPrettyPrint
      (\ s a -> s{_umiPrettyPrint = a})

-- | Name of the project scoping this request.
umiProject :: Lens' URLMapsInsert' Text
umiProject
  = lens _umiProject (\ s a -> s{_umiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umiUserIP :: Lens' URLMapsInsert' (Maybe Text)
umiUserIP
  = lens _umiUserIP (\ s a -> s{_umiUserIP = a})

-- | Multipart request metadata.
umiPayload :: Lens' URLMapsInsert' URLMap
umiPayload
  = lens _umiPayload (\ s a -> s{_umiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umiKey :: Lens' URLMapsInsert' (Maybe AuthKey)
umiKey = lens _umiKey (\ s a -> s{_umiKey = a})

-- | OAuth 2.0 token for the current user.
umiOAuthToken :: Lens' URLMapsInsert' (Maybe OAuthToken)
umiOAuthToken
  = lens _umiOAuthToken
      (\ s a -> s{_umiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umiFields :: Lens' URLMapsInsert' (Maybe Text)
umiFields
  = lens _umiFields (\ s a -> s{_umiFields = a})

instance GoogleAuth URLMapsInsert' where
        _AuthKey = umiKey . _Just
        _AuthToken = umiOAuthToken . _Just

instance GoogleRequest URLMapsInsert' where
        type Rs URLMapsInsert' = Operation
        request = requestWith computeRequest
        requestWith rq URLMapsInsert'{..}
          = go _umiProject _umiQuotaUser (Just _umiPrettyPrint)
              _umiUserIP
              _umiFields
              _umiKey
              _umiOAuthToken
              (Just AltJSON)
              _umiPayload
          where go
                  = clientBuild (Proxy :: Proxy URLMapsInsertResource)
                      rq
