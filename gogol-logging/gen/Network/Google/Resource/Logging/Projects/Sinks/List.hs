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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.sinks.list@.
module Network.Google.Resource.Logging.Projects.Sinks.List
    (
    -- * REST Resource
      ProjectsSinksListResource

    -- * Creating a Request
    , projectsSinksList
    , ProjectsSinksList

    -- * Request Lenses
    , pslXgafv
    , pslUploadProtocol
    , pslPp
    , pslAccessToken
    , pslUploadType
    , pslBearerToken
    , pslProjectName
    , pslPageToken
    , pslPageSize
    , pslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.list@ method which the
-- 'ProjectsSinksList' request conforms to.
type ProjectsSinksListResource =
     "v2beta1" :>
       Capture "projectName" Text :>
         "sinks" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListSinksResponse

-- | Lists sinks.
--
-- /See:/ 'projectsSinksList' smart constructor.
data ProjectsSinksList = ProjectsSinksList
    { _pslXgafv          :: !(Maybe Text)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslPp             :: !Bool
    , _pslAccessToken    :: !(Maybe Text)
    , _pslUploadType     :: !(Maybe Text)
    , _pslBearerToken    :: !(Maybe Text)
    , _pslProjectName    :: !Text
    , _pslPageToken      :: !(Maybe Text)
    , _pslPageSize       :: !(Maybe (Textual Int32))
    , _pslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslXgafv'
--
-- * 'pslUploadProtocol'
--
-- * 'pslPp'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslBearerToken'
--
-- * 'pslProjectName'
--
-- * 'pslPageToken'
--
-- * 'pslPageSize'
--
-- * 'pslCallback'
projectsSinksList
    :: Text -- ^ 'pslProjectName'
    -> ProjectsSinksList
projectsSinksList pPslProjectName_ =
    ProjectsSinksList
    { _pslXgafv = Nothing
    , _pslUploadProtocol = Nothing
    , _pslPp = True
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslBearerToken = Nothing
    , _pslProjectName = pPslProjectName_
    , _pslPageToken = Nothing
    , _pslPageSize = Nothing
    , _pslCallback = Nothing
    }

-- | V1 error format.
pslXgafv :: Lens' ProjectsSinksList (Maybe Text)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSinksList (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | Pretty-print response.
pslPp :: Lens' ProjectsSinksList Bool
pslPp = lens _pslPp (\ s a -> s{_pslPp = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSinksList (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSinksList (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | OAuth bearer token.
pslBearerToken :: Lens' ProjectsSinksList (Maybe Text)
pslBearerToken
  = lens _pslBearerToken
      (\ s a -> s{_pslBearerToken = a})

-- | Required. The resource name of the project containing the sinks.
-- Example: \`\"projects\/my-logging-project\"\`,
-- \`\"projects\/01234567890\"\`.
pslProjectName :: Lens' ProjectsSinksList Text
pslProjectName
  = lens _pslProjectName
      (\ s a -> s{_pslProjectName = a})

-- | Optional. If the \`pageToken\` request parameter is supplied, then the
-- next page of results in the set are retrieved. The \`pageToken\`
-- parameter must be set with the value of the \`nextPageToken\` result
-- parameter from the previous request. The value of \`projectName\` must
-- be the same as in the previous request.
pslPageToken :: Lens' ProjectsSinksList (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Fewer results might be returned. You must check for the
-- \`nextPageToken\` result to determine if additional results are
-- available, which you can retrieve by passing the \`nextPageToken\` value
-- in the \`pageToken\` parameter to the next request.
pslPageSize :: Lens' ProjectsSinksList (Maybe Int32)
pslPageSize
  = lens _pslPageSize (\ s a -> s{_pslPageSize = a}) .
      mapping _Coerce

-- | JSONP
pslCallback :: Lens' ProjectsSinksList (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest ProjectsSinksList where
        type Rs ProjectsSinksList = ListSinksResponse
        requestClient ProjectsSinksList{..}
          = go _pslProjectName _pslXgafv _pslUploadProtocol
              (Just _pslPp)
              _pslAccessToken
              _pslUploadType
              _pslBearerToken
              _pslPageToken
              _pslPageSize
              _pslCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksListResource)
                      mempty
