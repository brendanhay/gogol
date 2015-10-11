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
-- Module      : Network.Google.Resource.Genomics.Callsets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a call set.
--
-- /See:/ < Genomics API Reference> for @GenomicsCallsetsDelete@.
module Network.Google.Resource.Genomics.Callsets.Delete
    (
    -- * REST Resource
      CallsetsDeleteResource

    -- * Creating a Request
    , callsetsDelete'
    , CallsetsDelete'

    -- * Request Lenses
    , cdXgafv
    , cdQuotaUser
    , cdPrettyPrint
    , cdUploadProtocol
    , cdPp
    , cdAccessToken
    , cdUploadType
    , cdBearerToken
    , cdKey
    , cdCallSetId
    , cdOAuthToken
    , cdFields
    , cdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsDelete@ method which the
-- 'CallsetsDelete'' request conforms to.
type CallsetsDeleteResource =
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
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Delete '[JSON] Empty

-- | Deletes a call set.
--
-- /See:/ 'callsetsDelete'' smart constructor.
data CallsetsDelete' = CallsetsDelete'
    { _cdXgafv          :: !(Maybe Text)
    , _cdQuotaUser      :: !(Maybe Text)
    , _cdPrettyPrint    :: !Bool
    , _cdUploadProtocol :: !(Maybe Text)
    , _cdPp             :: !Bool
    , _cdAccessToken    :: !(Maybe Text)
    , _cdUploadType     :: !(Maybe Text)
    , _cdBearerToken    :: !(Maybe Text)
    , _cdKey            :: !(Maybe AuthKey)
    , _cdCallSetId      :: !Text
    , _cdOAuthToken     :: !(Maybe OAuthToken)
    , _cdFields         :: !(Maybe Text)
    , _cdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdXgafv'
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUploadProtocol'
--
-- * 'cdPp'
--
-- * 'cdAccessToken'
--
-- * 'cdUploadType'
--
-- * 'cdBearerToken'
--
-- * 'cdKey'
--
-- * 'cdCallSetId'
--
-- * 'cdOAuthToken'
--
-- * 'cdFields'
--
-- * 'cdCallback'
callsetsDelete'
    :: Text -- ^ 'callSetId'
    -> CallsetsDelete'
callsetsDelete' pCdCallSetId_ =
    CallsetsDelete'
    { _cdXgafv = Nothing
    , _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUploadProtocol = Nothing
    , _cdPp = True
    , _cdAccessToken = Nothing
    , _cdUploadType = Nothing
    , _cdBearerToken = Nothing
    , _cdKey = Nothing
    , _cdCallSetId = pCdCallSetId_
    , _cdOAuthToken = Nothing
    , _cdFields = Nothing
    , _cdCallback = Nothing
    }

-- | V1 error format.
cdXgafv :: Lens' CallsetsDelete' (Maybe Text)
cdXgafv = lens _cdXgafv (\ s a -> s{_cdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cdQuotaUser :: Lens' CallsetsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CallsetsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdUploadProtocol :: Lens' CallsetsDelete' (Maybe Text)
cdUploadProtocol
  = lens _cdUploadProtocol
      (\ s a -> s{_cdUploadProtocol = a})

-- | Pretty-print response.
cdPp :: Lens' CallsetsDelete' Bool
cdPp = lens _cdPp (\ s a -> s{_cdPp = a})

-- | OAuth access token.
cdAccessToken :: Lens' CallsetsDelete' (Maybe Text)
cdAccessToken
  = lens _cdAccessToken
      (\ s a -> s{_cdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdUploadType :: Lens' CallsetsDelete' (Maybe Text)
cdUploadType
  = lens _cdUploadType (\ s a -> s{_cdUploadType = a})

-- | OAuth bearer token.
cdBearerToken :: Lens' CallsetsDelete' (Maybe Text)
cdBearerToken
  = lens _cdBearerToken
      (\ s a -> s{_cdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CallsetsDelete' (Maybe AuthKey)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the call set to be deleted.
cdCallSetId :: Lens' CallsetsDelete' Text
cdCallSetId
  = lens _cdCallSetId (\ s a -> s{_cdCallSetId = a})

-- | OAuth 2.0 token for the current user.
cdOAuthToken :: Lens' CallsetsDelete' (Maybe OAuthToken)
cdOAuthToken
  = lens _cdOAuthToken (\ s a -> s{_cdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CallsetsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | JSONP
cdCallback :: Lens' CallsetsDelete' (Maybe Text)
cdCallback
  = lens _cdCallback (\ s a -> s{_cdCallback = a})

instance GoogleAuth CallsetsDelete' where
        _AuthKey = cdKey . _Just
        _AuthToken = cdOAuthToken . _Just

instance GoogleRequest CallsetsDelete' where
        type Rs CallsetsDelete' = Empty
        request = requestWith genomicsRequest
        requestWith rq CallsetsDelete'{..}
          = go _cdCallSetId _cdXgafv _cdUploadProtocol
              (Just _cdPp)
              _cdAccessToken
              _cdUploadType
              _cdBearerToken
              _cdCallback
              _cdQuotaUser
              (Just _cdPrettyPrint)
              _cdFields
              _cdKey
              _cdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CallsetsDeleteResource)
                      rq
