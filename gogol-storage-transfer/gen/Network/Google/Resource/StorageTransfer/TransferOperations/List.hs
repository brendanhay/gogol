{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StoragetransferTransferOperationsList@.
module StorageTransfer.TransferOperations.List
    (
    -- * REST Resource
      TransferOperationsListAPI

    -- * Creating a Request
    , transferOperationsList
    , TransferOperationsList

    -- * Request Lenses
    , tolXgafv
    , tolQuotaUser
    , tolPrettyPrint
    , tolUploadProtocol
    , tolPp
    , tolAccessToken
    , tolUploadType
    , tolBearerToken
    , tolKey
    , tolName
    , tolFilter
    , tolPageToken
    , tolOauthToken
    , tolPageSize
    , tolFields
    , tolCallback
    , tolAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StoragetransferTransferOperationsList@ which the
-- 'TransferOperationsList' request conforms to.
type TransferOperationsListAPI =
     "v1" :>
       "{+name}" :>
         QueryParam "filter" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "pageSize" Int32 :>
               Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ 'transferOperationsList' smart constructor.
data TransferOperationsList = TransferOperationsList
    { _tolXgafv          :: !(Maybe Text)
    , _tolQuotaUser      :: !(Maybe Text)
    , _tolPrettyPrint    :: !Bool
    , _tolUploadProtocol :: !(Maybe Text)
    , _tolPp             :: !Bool
    , _tolAccessToken    :: !(Maybe Text)
    , _tolUploadType     :: !(Maybe Text)
    , _tolBearerToken    :: !(Maybe Text)
    , _tolKey            :: !(Maybe Text)
    , _tolName           :: !Text
    , _tolFilter         :: !(Maybe Text)
    , _tolPageToken      :: !(Maybe Text)
    , _tolOauthToken     :: !(Maybe Text)
    , _tolPageSize       :: !(Maybe Int32)
    , _tolFields         :: !(Maybe Text)
    , _tolCallback       :: !(Maybe Text)
    , _tolAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tolXgafv'
--
-- * 'tolQuotaUser'
--
-- * 'tolPrettyPrint'
--
-- * 'tolUploadProtocol'
--
-- * 'tolPp'
--
-- * 'tolAccessToken'
--
-- * 'tolUploadType'
--
-- * 'tolBearerToken'
--
-- * 'tolKey'
--
-- * 'tolName'
--
-- * 'tolFilter'
--
-- * 'tolPageToken'
--
-- * 'tolOauthToken'
--
-- * 'tolPageSize'
--
-- * 'tolFields'
--
-- * 'tolCallback'
--
-- * 'tolAlt'
transferOperationsList
    :: Text -- ^ 'name'
    -> TransferOperationsList
transferOperationsList pTolName_ =
    TransferOperationsList
    { _tolXgafv = Nothing
    , _tolQuotaUser = Nothing
    , _tolPrettyPrint = True
    , _tolUploadProtocol = Nothing
    , _tolPp = True
    , _tolAccessToken = Nothing
    , _tolUploadType = Nothing
    , _tolBearerToken = Nothing
    , _tolKey = Nothing
    , _tolName = pTolName_
    , _tolFilter = Nothing
    , _tolPageToken = Nothing
    , _tolOauthToken = Nothing
    , _tolPageSize = Nothing
    , _tolFields = Nothing
    , _tolCallback = Nothing
    , _tolAlt = "json"
    }

-- | V1 error format.
tolXgafv :: Lens' TransferOperationsList' (Maybe Text)
tolXgafv = lens _tolXgafv (\ s a -> s{_tolXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
tolQuotaUser :: Lens' TransferOperationsList' (Maybe Text)
tolQuotaUser
  = lens _tolQuotaUser (\ s a -> s{_tolQuotaUser = a})

-- | Returns response with indentations and line breaks.
tolPrettyPrint :: Lens' TransferOperationsList' Bool
tolPrettyPrint
  = lens _tolPrettyPrint
      (\ s a -> s{_tolPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tolUploadProtocol :: Lens' TransferOperationsList' (Maybe Text)
tolUploadProtocol
  = lens _tolUploadProtocol
      (\ s a -> s{_tolUploadProtocol = a})

-- | Pretty-print response.
tolPp :: Lens' TransferOperationsList' Bool
tolPp = lens _tolPp (\ s a -> s{_tolPp = a})

-- | OAuth access token.
tolAccessToken :: Lens' TransferOperationsList' (Maybe Text)
tolAccessToken
  = lens _tolAccessToken
      (\ s a -> s{_tolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tolUploadType :: Lens' TransferOperationsList' (Maybe Text)
tolUploadType
  = lens _tolUploadType
      (\ s a -> s{_tolUploadType = a})

-- | OAuth bearer token.
tolBearerToken :: Lens' TransferOperationsList' (Maybe Text)
tolBearerToken
  = lens _tolBearerToken
      (\ s a -> s{_tolBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tolKey :: Lens' TransferOperationsList' (Maybe Text)
tolKey = lens _tolKey (\ s a -> s{_tolKey = a})

-- | The value \`transferOperations\`.
tolName :: Lens' TransferOperationsList' Text
tolName = lens _tolName (\ s a -> s{_tolName = a})

-- | The standard list filter.
tolFilter :: Lens' TransferOperationsList' (Maybe Text)
tolFilter
  = lens _tolFilter (\ s a -> s{_tolFilter = a})

-- | The standard list page token.
tolPageToken :: Lens' TransferOperationsList' (Maybe Text)
tolPageToken
  = lens _tolPageToken (\ s a -> s{_tolPageToken = a})

-- | OAuth 2.0 token for the current user.
tolOauthToken :: Lens' TransferOperationsList' (Maybe Text)
tolOauthToken
  = lens _tolOauthToken
      (\ s a -> s{_tolOauthToken = a})

-- | The standard list page size.
tolPageSize :: Lens' TransferOperationsList' (Maybe Int32)
tolPageSize
  = lens _tolPageSize (\ s a -> s{_tolPageSize = a})

-- | Selector specifying which fields to include in a partial response.
tolFields :: Lens' TransferOperationsList' (Maybe Text)
tolFields
  = lens _tolFields (\ s a -> s{_tolFields = a})

-- | JSONP
tolCallback :: Lens' TransferOperationsList' (Maybe Text)
tolCallback
  = lens _tolCallback (\ s a -> s{_tolCallback = a})

-- | Data format for response.
tolAlt :: Lens' TransferOperationsList' Text
tolAlt = lens _tolAlt (\ s a -> s{_tolAlt = a})

instance GoogleRequest TransferOperationsList' where
        type Rs TransferOperationsList' =
             ListOperationsResponse
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u TransferOperationsList{..}
          = go _tolXgafv _tolQuotaUser _tolPrettyPrint
              _tolUploadProtocol
              _tolPp
              _tolAccessToken
              _tolUploadType
              _tolBearerToken
              _tolKey
              _tolName
              _tolFilter
              _tolPageToken
              _tolOauthToken
              _tolPageSize
              _tolFields
              _tolCallback
              _tolAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferOperationsListAPI)
                      r
                      u
