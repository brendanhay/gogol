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
-- Module      : Network.Google.Resource.Genomics.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists operations that match the specified filter in the request.
--
-- /See:/ < Genomics API Reference> for @GenomicsOperationsList@.
module Network.Google.Resource.Genomics.Operations.List
    (
    -- * REST Resource
      OperationsListResource

    -- * Creating a Request
    , operationsList'
    , OperationsList'

    -- * Request Lenses
    , olXgafv
    , olQuotaUser
    , olPrettyPrint
    , olUploadProtocol
    , olPp
    , olAccessToken
    , olUploadType
    , olBearerToken
    , olKey
    , olName
    , olFilter
    , olPageToken
    , olOAuthToken
    , olPageSize
    , olFields
    , olCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsOperationsList@ method which the
-- 'OperationsList'' request conforms to.
type OperationsListResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     Header "Authorization" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request.
--
-- /See:/ 'operationsList'' smart constructor.
data OperationsList' = OperationsList'
    { _olXgafv          :: !(Maybe Text)
    , _olQuotaUser      :: !(Maybe Text)
    , _olPrettyPrint    :: !Bool
    , _olUploadProtocol :: !(Maybe Text)
    , _olPp             :: !Bool
    , _olAccessToken    :: !(Maybe Text)
    , _olUploadType     :: !(Maybe Text)
    , _olBearerToken    :: !(Maybe Text)
    , _olKey            :: !(Maybe AuthKey)
    , _olName           :: !Text
    , _olFilter         :: !(Maybe Text)
    , _olPageToken      :: !(Maybe Text)
    , _olOAuthToken     :: !(Maybe OAuthToken)
    , _olPageSize       :: !(Maybe Int32)
    , _olFields         :: !(Maybe Text)
    , _olCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olXgafv'
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olUploadProtocol'
--
-- * 'olPp'
--
-- * 'olAccessToken'
--
-- * 'olUploadType'
--
-- * 'olBearerToken'
--
-- * 'olKey'
--
-- * 'olName'
--
-- * 'olFilter'
--
-- * 'olPageToken'
--
-- * 'olOAuthToken'
--
-- * 'olPageSize'
--
-- * 'olFields'
--
-- * 'olCallback'
operationsList'
    :: Text -- ^ 'name'
    -> OperationsList'
operationsList' pOlName_ =
    OperationsList'
    { _olXgafv = Nothing
    , _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olUploadProtocol = Nothing
    , _olPp = True
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olBearerToken = Nothing
    , _olKey = Nothing
    , _olName = pOlName_
    , _olFilter = Nothing
    , _olPageToken = Nothing
    , _olOAuthToken = Nothing
    , _olPageSize = Nothing
    , _olFields = Nothing
    , _olCallback = Nothing
    }

-- | V1 error format.
olXgafv :: Lens' OperationsList' (Maybe Text)
olXgafv = lens _olXgafv (\ s a -> s{_olXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
olQuotaUser :: Lens' OperationsList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OperationsList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olUploadProtocol :: Lens' OperationsList' (Maybe Text)
olUploadProtocol
  = lens _olUploadProtocol
      (\ s a -> s{_olUploadProtocol = a})

-- | Pretty-print response.
olPp :: Lens' OperationsList' Bool
olPp = lens _olPp (\ s a -> s{_olPp = a})

-- | OAuth access token.
olAccessToken :: Lens' OperationsList' (Maybe Text)
olAccessToken
  = lens _olAccessToken
      (\ s a -> s{_olAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olUploadType :: Lens' OperationsList' (Maybe Text)
olUploadType
  = lens _olUploadType (\ s a -> s{_olUploadType = a})

-- | OAuth bearer token.
olBearerToken :: Lens' OperationsList' (Maybe Text)
olBearerToken
  = lens _olBearerToken
      (\ s a -> s{_olBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OperationsList' (Maybe AuthKey)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | The name of the operation collection.
olName :: Lens' OperationsList' Text
olName = lens _olName (\ s a -> s{_olName = a})

-- | A string for filtering Operations. The following filter fields are
-- supported: * projectId: Required. Corresponds to
-- OperationMetadata.projectId. * createTime: The time this job was
-- created, in seconds from the
-- [epoch](http:\/\/en.wikipedia.org\/wiki\/Unix_time). Can use \`>=\`
-- and\/or \`= 1432140000\` * \`projectId = my-project AND createTime >=
-- 1432140000 AND createTime \<= 1432150000 AND status = RUNNING\`
olFilter :: Lens' OperationsList' (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | The standard list page token.
olPageToken :: Lens' OperationsList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | OAuth 2.0 token for the current user.
olOAuthToken :: Lens' OperationsList' (Maybe OAuthToken)
olOAuthToken
  = lens _olOAuthToken (\ s a -> s{_olOAuthToken = a})

-- | The maximum number of results to return. If unspecified, defaults to
-- 256. The maximum value is 2048.
olPageSize :: Lens' OperationsList' (Maybe Int32)
olPageSize
  = lens _olPageSize (\ s a -> s{_olPageSize = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OperationsList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | JSONP
olCallback :: Lens' OperationsList' (Maybe Text)
olCallback
  = lens _olCallback (\ s a -> s{_olCallback = a})

instance GoogleAuth OperationsList' where
        _AuthKey = olKey . _Just
        _AuthToken = olOAuthToken . _Just

instance GoogleRequest OperationsList' where
        type Rs OperationsList' = ListOperationsResponse
        request = requestWith genomicsRequest
        requestWith rq OperationsList'{..}
          = go _olName _olXgafv _olUploadProtocol (Just _olPp)
              _olAccessToken
              _olUploadType
              _olBearerToken
              _olFilter
              _olPageToken
              _olPageSize
              _olCallback
              _olQuotaUser
              (Just _olPrettyPrint)
              _olFields
              _olKey
              _olOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy OperationsListResource)
                      rq
