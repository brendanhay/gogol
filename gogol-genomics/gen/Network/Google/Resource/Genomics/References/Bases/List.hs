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
-- Module      : Network.Google.Resource.Genomics.References.Bases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the bases in a reference, optionally restricted to a range.
-- Implements
-- [GlobalAllianceApi.getReferenceBases](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L221).
--
-- /See:/ < Genomics API Reference> for @GenomicsReferencesBasesList@.
module Network.Google.Resource.Genomics.References.Bases.List
    (
    -- * REST Resource
      ReferencesBasesListResource

    -- * Creating a Request
    , referencesBasesList'
    , ReferencesBasesList'

    -- * Request Lenses
    , rblXgafv
    , rblQuotaUser
    , rblPrettyPrint
    , rblUploadProtocol
    , rblPp
    , rblAccessToken
    , rblStart
    , rblUploadType
    , rblReferenceId
    , rblBearerToken
    , rblKey
    , rblEnd
    , rblPageToken
    , rblOAuthToken
    , rblPageSize
    , rblFields
    , rblCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesBasesList@ method which the
-- 'ReferencesBasesList'' request conforms to.
type ReferencesBasesListResource =
     "v1" :>
       "references" :>
         Capture "referenceId" Text :>
           "bases" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "start" Int64 :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "end" Int64 :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" Int32 :>
                                 QueryParam "callback" Text :>
                                   QueryParam "quotaUser" Text :>
                                     QueryParam "prettyPrint" Bool :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" AuthKey :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] ListBasesResponse

-- | Lists the bases in a reference, optionally restricted to a range.
-- Implements
-- [GlobalAllianceApi.getReferenceBases](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L221).
--
-- /See:/ 'referencesBasesList'' smart constructor.
data ReferencesBasesList' = ReferencesBasesList'
    { _rblXgafv          :: !(Maybe Text)
    , _rblQuotaUser      :: !(Maybe Text)
    , _rblPrettyPrint    :: !Bool
    , _rblUploadProtocol :: !(Maybe Text)
    , _rblPp             :: !Bool
    , _rblAccessToken    :: !(Maybe Text)
    , _rblStart          :: !(Maybe Int64)
    , _rblUploadType     :: !(Maybe Text)
    , _rblReferenceId    :: !Text
    , _rblBearerToken    :: !(Maybe Text)
    , _rblKey            :: !(Maybe AuthKey)
    , _rblEnd            :: !(Maybe Int64)
    , _rblPageToken      :: !(Maybe Text)
    , _rblOAuthToken     :: !(Maybe OAuthToken)
    , _rblPageSize       :: !(Maybe Int32)
    , _rblFields         :: !(Maybe Text)
    , _rblCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesBasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rblXgafv'
--
-- * 'rblQuotaUser'
--
-- * 'rblPrettyPrint'
--
-- * 'rblUploadProtocol'
--
-- * 'rblPp'
--
-- * 'rblAccessToken'
--
-- * 'rblStart'
--
-- * 'rblUploadType'
--
-- * 'rblReferenceId'
--
-- * 'rblBearerToken'
--
-- * 'rblKey'
--
-- * 'rblEnd'
--
-- * 'rblPageToken'
--
-- * 'rblOAuthToken'
--
-- * 'rblPageSize'
--
-- * 'rblFields'
--
-- * 'rblCallback'
referencesBasesList'
    :: Text -- ^ 'referenceId'
    -> ReferencesBasesList'
referencesBasesList' pRblReferenceId_ =
    ReferencesBasesList'
    { _rblXgafv = Nothing
    , _rblQuotaUser = Nothing
    , _rblPrettyPrint = True
    , _rblUploadProtocol = Nothing
    , _rblPp = True
    , _rblAccessToken = Nothing
    , _rblStart = Nothing
    , _rblUploadType = Nothing
    , _rblReferenceId = pRblReferenceId_
    , _rblBearerToken = Nothing
    , _rblKey = Nothing
    , _rblEnd = Nothing
    , _rblPageToken = Nothing
    , _rblOAuthToken = Nothing
    , _rblPageSize = Nothing
    , _rblFields = Nothing
    , _rblCallback = Nothing
    }

-- | V1 error format.
rblXgafv :: Lens' ReferencesBasesList' (Maybe Text)
rblXgafv = lens _rblXgafv (\ s a -> s{_rblXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
rblQuotaUser :: Lens' ReferencesBasesList' (Maybe Text)
rblQuotaUser
  = lens _rblQuotaUser (\ s a -> s{_rblQuotaUser = a})

-- | Returns response with indentations and line breaks.
rblPrettyPrint :: Lens' ReferencesBasesList' Bool
rblPrettyPrint
  = lens _rblPrettyPrint
      (\ s a -> s{_rblPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rblUploadProtocol :: Lens' ReferencesBasesList' (Maybe Text)
rblUploadProtocol
  = lens _rblUploadProtocol
      (\ s a -> s{_rblUploadProtocol = a})

-- | Pretty-print response.
rblPp :: Lens' ReferencesBasesList' Bool
rblPp = lens _rblPp (\ s a -> s{_rblPp = a})

-- | OAuth access token.
rblAccessToken :: Lens' ReferencesBasesList' (Maybe Text)
rblAccessToken
  = lens _rblAccessToken
      (\ s a -> s{_rblAccessToken = a})

-- | The start position (0-based) of this query. Defaults to 0.
rblStart :: Lens' ReferencesBasesList' (Maybe Int64)
rblStart = lens _rblStart (\ s a -> s{_rblStart = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rblUploadType :: Lens' ReferencesBasesList' (Maybe Text)
rblUploadType
  = lens _rblUploadType
      (\ s a -> s{_rblUploadType = a})

-- | The ID of the reference.
rblReferenceId :: Lens' ReferencesBasesList' Text
rblReferenceId
  = lens _rblReferenceId
      (\ s a -> s{_rblReferenceId = a})

-- | OAuth bearer token.
rblBearerToken :: Lens' ReferencesBasesList' (Maybe Text)
rblBearerToken
  = lens _rblBearerToken
      (\ s a -> s{_rblBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rblKey :: Lens' ReferencesBasesList' (Maybe AuthKey)
rblKey = lens _rblKey (\ s a -> s{_rblKey = a})

-- | The end position (0-based, exclusive) of this query. Defaults to the
-- length of this reference.
rblEnd :: Lens' ReferencesBasesList' (Maybe Int64)
rblEnd = lens _rblEnd (\ s a -> s{_rblEnd = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
rblPageToken :: Lens' ReferencesBasesList' (Maybe Text)
rblPageToken
  = lens _rblPageToken (\ s a -> s{_rblPageToken = a})

-- | OAuth 2.0 token for the current user.
rblOAuthToken :: Lens' ReferencesBasesList' (Maybe OAuthToken)
rblOAuthToken
  = lens _rblOAuthToken
      (\ s a -> s{_rblOAuthToken = a})

-- | Specifies the maximum number of bases to return in a single page.
rblPageSize :: Lens' ReferencesBasesList' (Maybe Int32)
rblPageSize
  = lens _rblPageSize (\ s a -> s{_rblPageSize = a})

-- | Selector specifying which fields to include in a partial response.
rblFields :: Lens' ReferencesBasesList' (Maybe Text)
rblFields
  = lens _rblFields (\ s a -> s{_rblFields = a})

-- | JSONP
rblCallback :: Lens' ReferencesBasesList' (Maybe Text)
rblCallback
  = lens _rblCallback (\ s a -> s{_rblCallback = a})

instance GoogleAuth ReferencesBasesList' where
        _AuthKey = rblKey . _Just
        _AuthToken = rblOAuthToken . _Just

instance GoogleRequest ReferencesBasesList' where
        type Rs ReferencesBasesList' = ListBasesResponse
        request = requestWith genomicsRequest
        requestWith rq ReferencesBasesList'{..}
          = go _rblReferenceId _rblXgafv _rblUploadProtocol
              (Just _rblPp)
              _rblAccessToken
              _rblStart
              _rblUploadType
              _rblBearerToken
              _rblEnd
              _rblPageToken
              _rblPageSize
              _rblCallback
              _rblQuotaUser
              (Just _rblPrettyPrint)
              _rblFields
              _rblKey
              _rblOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ReferencesBasesListResource)
                      rq
