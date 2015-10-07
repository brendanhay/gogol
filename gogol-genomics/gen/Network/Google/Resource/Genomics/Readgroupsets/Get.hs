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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a read group set by ID.
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsGet@.
module Network.Google.Resource.Genomics.Readgroupsets.Get
    (
    -- * REST Resource
      ReadgroupsetsGetResource

    -- * Creating a Request
    , readgroupsetsGet'
    , ReadgroupsetsGet'

    -- * Request Lenses
    , rgXgafv
    , rgQuotaUser
    , rgPrettyPrint
    , rgReadGroupSetId
    , rgUploadProtocol
    , rgPp
    , rgAccessToken
    , rgUploadType
    , rgBearerToken
    , rgKey
    , rgOAuthToken
    , rgFields
    , rgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsGet@ method which the
-- 'ReadgroupsetsGet'' request conforms to.
type ReadgroupsetsGetResource =
     "v1" :>
       "readgroupsets" :>
         Capture "readGroupSetId" Text :>
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
                                     Get '[JSON] ReadGroupSet

-- | Gets a read group set by ID.
--
-- /See:/ 'readgroupsetsGet'' smart constructor.
data ReadgroupsetsGet' = ReadgroupsetsGet'
    { _rgXgafv          :: !(Maybe Text)
    , _rgQuotaUser      :: !(Maybe Text)
    , _rgPrettyPrint    :: !Bool
    , _rgReadGroupSetId :: !Text
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgPp             :: !Bool
    , _rgAccessToken    :: !(Maybe Text)
    , _rgUploadType     :: !(Maybe Text)
    , _rgBearerToken    :: !(Maybe Text)
    , _rgKey            :: !(Maybe AuthKey)
    , _rgOAuthToken     :: !(Maybe OAuthToken)
    , _rgFields         :: !(Maybe Text)
    , _rgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgReadGroupSetId'
--
-- * 'rgUploadProtocol'
--
-- * 'rgPp'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgBearerToken'
--
-- * 'rgKey'
--
-- * 'rgOAuthToken'
--
-- * 'rgFields'
--
-- * 'rgCallback'
readgroupsetsGet'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsGet'
readgroupsetsGet' pRgReadGroupSetId_ =
    ReadgroupsetsGet'
    { _rgXgafv = Nothing
    , _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgReadGroupSetId = pRgReadGroupSetId_
    , _rgUploadProtocol = Nothing
    , _rgPp = True
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgBearerToken = Nothing
    , _rgKey = Nothing
    , _rgOAuthToken = Nothing
    , _rgFields = Nothing
    , _rgCallback = Nothing
    }

-- | V1 error format.
rgXgafv :: Lens' ReadgroupsetsGet' (Maybe Text)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
rgQuotaUser :: Lens' ReadgroupsetsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ReadgroupsetsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | The ID of the read group set.
rgReadGroupSetId :: Lens' ReadgroupsetsGet' Text
rgReadGroupSetId
  = lens _rgReadGroupSetId
      (\ s a -> s{_rgReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ReadgroupsetsGet' (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | Pretty-print response.
rgPp :: Lens' ReadgroupsetsGet' Bool
rgPp = lens _rgPp (\ s a -> s{_rgPp = a})

-- | OAuth access token.
rgAccessToken :: Lens' ReadgroupsetsGet' (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ReadgroupsetsGet' (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | OAuth bearer token.
rgBearerToken :: Lens' ReadgroupsetsGet' (Maybe Text)
rgBearerToken
  = lens _rgBearerToken
      (\ s a -> s{_rgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReadgroupsetsGet' (Maybe AuthKey)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' ReadgroupsetsGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReadgroupsetsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | JSONP
rgCallback :: Lens' ReadgroupsetsGet' (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleAuth ReadgroupsetsGet' where
        _AuthKey = rgKey . _Just
        _AuthToken = rgOAuthToken . _Just

instance GoogleRequest ReadgroupsetsGet' where
        type Rs ReadgroupsetsGet' = ReadGroupSet
        request = requestWith genomicsRequest
        requestWith rq ReadgroupsetsGet'{..}
          = go _rgReadGroupSetId _rgXgafv _rgUploadProtocol
              (Just _rgPp)
              _rgAccessToken
              _rgUploadType
              _rgBearerToken
              _rgCallback
              _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ReadgroupsetsGetResource)
                      rq
