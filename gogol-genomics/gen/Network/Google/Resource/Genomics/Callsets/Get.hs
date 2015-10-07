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
-- Module      : Network.Google.Resource.Genomics.Callsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a call set by ID.
--
-- /See:/ < Genomics API Reference> for @GenomicsCallsetsGet@.
module Network.Google.Resource.Genomics.Callsets.Get
    (
    -- * REST Resource
      CallsetsGetResource

    -- * Creating a Request
    , callsetsGet'
    , CallsetsGet'

    -- * Request Lenses
    , cgXgafv
    , cgQuotaUser
    , cgPrettyPrint
    , cgUploadProtocol
    , cgPp
    , cgAccessToken
    , cgUploadType
    , cgBearerToken
    , cgKey
    , cgCallSetId
    , cgOAuthToken
    , cgFields
    , cgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsGet@ method which the
-- 'CallsetsGet'' request conforms to.
type CallsetsGetResource =
     "v1" :>
       "callsets" :>
         Capture "callSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] CallSet

-- | Gets a call set by ID.
--
-- /See:/ 'callsetsGet'' smart constructor.
data CallsetsGet' = CallsetsGet'
    { _cgXgafv          :: !(Maybe Text)
    , _cgQuotaUser      :: !(Maybe Text)
    , _cgPrettyPrint    :: !Bool
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgPp             :: !Bool
    , _cgAccessToken    :: !(Maybe Text)
    , _cgUploadType     :: !(Maybe Text)
    , _cgBearerToken    :: !(Maybe Text)
    , _cgKey            :: !(Maybe AuthKey)
    , _cgCallSetId      :: !Text
    , _cgOAuthToken     :: !(Maybe OAuthToken)
    , _cgFields         :: !(Maybe Text)
    , _cgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUploadProtocol'
--
-- * 'cgPp'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgBearerToken'
--
-- * 'cgKey'
--
-- * 'cgCallSetId'
--
-- * 'cgOAuthToken'
--
-- * 'cgFields'
--
-- * 'cgCallback'
callsetsGet'
    :: Text -- ^ 'callSetId'
    -> CallsetsGet'
callsetsGet' pCgCallSetId_ =
    CallsetsGet'
    { _cgXgafv = Nothing
    , _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUploadProtocol = Nothing
    , _cgPp = True
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgBearerToken = Nothing
    , _cgKey = Nothing
    , _cgCallSetId = pCgCallSetId_
    , _cgOAuthToken = Nothing
    , _cgFields = Nothing
    , _cgCallback = Nothing
    }

-- | V1 error format.
cgXgafv :: Lens' CallsetsGet' (Maybe Text)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cgQuotaUser :: Lens' CallsetsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CallsetsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CallsetsGet' (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | Pretty-print response.
cgPp :: Lens' CallsetsGet' Bool
cgPp = lens _cgPp (\ s a -> s{_cgPp = a})

-- | OAuth access token.
cgAccessToken :: Lens' CallsetsGet' (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CallsetsGet' (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | OAuth bearer token.
cgBearerToken :: Lens' CallsetsGet' (Maybe Text)
cgBearerToken
  = lens _cgBearerToken
      (\ s a -> s{_cgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CallsetsGet' (Maybe AuthKey)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The ID of the call set.
cgCallSetId :: Lens' CallsetsGet' Text
cgCallSetId
  = lens _cgCallSetId (\ s a -> s{_cgCallSetId = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CallsetsGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CallsetsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | JSONP
cgCallback :: Lens' CallsetsGet' (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleAuth CallsetsGet' where
        _AuthKey = cgKey . _Just
        _AuthToken = cgOAuthToken . _Just

instance GoogleRequest CallsetsGet' where
        type Rs CallsetsGet' = CallSet
        request = requestWith genomicsRequest
        requestWith rq CallsetsGet'{..}
          = go _cgCallSetId _cgXgafv _cgUploadProtocol
              (Just _cgPp)
              _cgAccessToken
              _cgUploadType
              _cgBearerToken
              _cgCallback
              _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CallsetsGetResource) rq
