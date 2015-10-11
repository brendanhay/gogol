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
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Indexes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the current index values for a log service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesIndexesList@.
module Network.Google.Resource.Logging.Projects.LogServices.Indexes.List
    (
    -- * REST Resource
      ProjectsLogServicesIndexesListResource

    -- * Creating a Request
    , projectsLogServicesIndexesList'
    , ProjectsLogServicesIndexesList'

    -- * Request Lenses
    , plsilLog
    , plsilXgafv
    , plsilQuotaUser
    , plsilPrettyPrint
    , plsilUploadProtocol
    , plsilPp
    , plsilAccessToken
    , plsilUploadType
    , plsilBearerToken
    , plsilKey
    , plsilLogServicesId
    , plsilDepth
    , plsilPageToken
    , plsilOAuthToken
    , plsilProjectsId
    , plsilPageSize
    , plsilIndexPrefix
    , plsilFields
    , plsilCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesIndexesList@ method which the
-- 'ProjectsLogServicesIndexesList'' request conforms to.
type ProjectsLogServicesIndexesListResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
               "indexes" :>
                 QueryParam "log" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "depth" Int32 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "indexPrefix" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "quotaUser" Text :>
                                           QueryParam "prettyPrint" Bool :>
                                             QueryParam "fields" Text :>
                                               QueryParam "key" AuthKey :>
                                                 Header "Authorization"
                                                   OAuthToken
                                                   :>
                                                   QueryParam "alt" AltJSON :>
                                                     Get '[JSON]
                                                       ListLogServiceIndexesResponse

-- | Lists the current index values for a log service.
--
-- /See:/ 'projectsLogServicesIndexesList'' smart constructor.
data ProjectsLogServicesIndexesList' = ProjectsLogServicesIndexesList'
    { _plsilLog            :: !(Maybe Text)
    , _plsilXgafv          :: !(Maybe Text)
    , _plsilQuotaUser      :: !(Maybe Text)
    , _plsilPrettyPrint    :: !Bool
    , _plsilUploadProtocol :: !(Maybe Text)
    , _plsilPp             :: !Bool
    , _plsilAccessToken    :: !(Maybe Text)
    , _plsilUploadType     :: !(Maybe Text)
    , _plsilBearerToken    :: !(Maybe Text)
    , _plsilKey            :: !(Maybe AuthKey)
    , _plsilLogServicesId  :: !Text
    , _plsilDepth          :: !(Maybe Int32)
    , _plsilPageToken      :: !(Maybe Text)
    , _plsilOAuthToken     :: !(Maybe OAuthToken)
    , _plsilProjectsId     :: !Text
    , _plsilPageSize       :: !(Maybe Int32)
    , _plsilIndexPrefix    :: !(Maybe Text)
    , _plsilFields         :: !(Maybe Text)
    , _plsilCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesIndexesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsilLog'
--
-- * 'plsilXgafv'
--
-- * 'plsilQuotaUser'
--
-- * 'plsilPrettyPrint'
--
-- * 'plsilUploadProtocol'
--
-- * 'plsilPp'
--
-- * 'plsilAccessToken'
--
-- * 'plsilUploadType'
--
-- * 'plsilBearerToken'
--
-- * 'plsilKey'
--
-- * 'plsilLogServicesId'
--
-- * 'plsilDepth'
--
-- * 'plsilPageToken'
--
-- * 'plsilOAuthToken'
--
-- * 'plsilProjectsId'
--
-- * 'plsilPageSize'
--
-- * 'plsilIndexPrefix'
--
-- * 'plsilFields'
--
-- * 'plsilCallback'
projectsLogServicesIndexesList'
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogServicesIndexesList'
projectsLogServicesIndexesList' pPlsilLogServicesId_ pPlsilProjectsId_ =
    ProjectsLogServicesIndexesList'
    { _plsilLog = Nothing
    , _plsilXgafv = Nothing
    , _plsilQuotaUser = Nothing
    , _plsilPrettyPrint = True
    , _plsilUploadProtocol = Nothing
    , _plsilPp = True
    , _plsilAccessToken = Nothing
    , _plsilUploadType = Nothing
    , _plsilBearerToken = Nothing
    , _plsilKey = Nothing
    , _plsilLogServicesId = pPlsilLogServicesId_
    , _plsilDepth = Nothing
    , _plsilPageToken = Nothing
    , _plsilOAuthToken = Nothing
    , _plsilProjectsId = pPlsilProjectsId_
    , _plsilPageSize = Nothing
    , _plsilIndexPrefix = Nothing
    , _plsilFields = Nothing
    , _plsilCallback = Nothing
    }

-- | _Optional_. The resource name of a log, such as
-- \`\"projects\/project_id\/logs\/log_name\"\`. If present, indexes are
-- returned for any service associated with entries in the log.
plsilLog :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilLog = lens _plsilLog (\ s a -> s{_plsilLog = a})

-- | V1 error format.
plsilXgafv :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilXgafv
  = lens _plsilXgafv (\ s a -> s{_plsilXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plsilQuotaUser :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilQuotaUser
  = lens _plsilQuotaUser
      (\ s a -> s{_plsilQuotaUser = a})

-- | Returns response with indentations and line breaks.
plsilPrettyPrint :: Lens' ProjectsLogServicesIndexesList' Bool
plsilPrettyPrint
  = lens _plsilPrettyPrint
      (\ s a -> s{_plsilPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsilUploadProtocol :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilUploadProtocol
  = lens _plsilUploadProtocol
      (\ s a -> s{_plsilUploadProtocol = a})

-- | Pretty-print response.
plsilPp :: Lens' ProjectsLogServicesIndexesList' Bool
plsilPp = lens _plsilPp (\ s a -> s{_plsilPp = a})

-- | OAuth access token.
plsilAccessToken :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilAccessToken
  = lens _plsilAccessToken
      (\ s a -> s{_plsilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsilUploadType :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilUploadType
  = lens _plsilUploadType
      (\ s a -> s{_plsilUploadType = a})

-- | OAuth bearer token.
plsilBearerToken :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilBearerToken
  = lens _plsilBearerToken
      (\ s a -> s{_plsilBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plsilKey :: Lens' ProjectsLogServicesIndexesList' (Maybe AuthKey)
plsilKey = lens _plsilKey (\ s a -> s{_plsilKey = a})

-- | Part of \`serviceName\`. See documentation of \`projectsId\`.
plsilLogServicesId :: Lens' ProjectsLogServicesIndexesList' Text
plsilLogServicesId
  = lens _plsilLogServicesId
      (\ s a -> s{_plsilLogServicesId = a})

-- | A non-negative integer that limits the number of levels of the index
-- hierarchy that are returned. If \`depth\` is 1 (default), only the first
-- index key value is returned. If \`depth\` is 2, both primary and
-- secondary key values are returned. If \`depth\` is 0, the depth is the
-- number of slash-separators in the \`indexPrefix\` field, not counting a
-- slash appearing as the last character of the prefix. If the
-- \`indexPrefix\` field is empty, the default depth is 1. It is an error
-- for \`depth\` to be any positive value less than the number of
-- components in \`indexPrefix\`.
plsilDepth :: Lens' ProjectsLogServicesIndexesList' (Maybe Int32)
plsilDepth
  = lens _plsilDepth (\ s a -> s{_plsilDepth = a})

-- | An opaque token, returned as \`nextPageToken\` by a prior
-- \`ListLogServiceIndexes\` operation. If \`pageToken\` is supplied, then
-- the other fields of this request are ignored, and instead the previous
-- \`ListLogServiceIndexes\` operation is continued.
plsilPageToken :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilPageToken
  = lens _plsilPageToken
      (\ s a -> s{_plsilPageToken = a})

-- | OAuth 2.0 token for the current user.
plsilOAuthToken :: Lens' ProjectsLogServicesIndexesList' (Maybe OAuthToken)
plsilOAuthToken
  = lens _plsilOAuthToken
      (\ s a -> s{_plsilOAuthToken = a})

-- | Part of \`serviceName\`. The resource name of a log service whose
-- service indexes are requested. Example:
-- \`\"projects\/my-project-id\/logServices\/appengine.googleapis.com\"\`.
plsilProjectsId :: Lens' ProjectsLogServicesIndexesList' Text
plsilProjectsId
  = lens _plsilProjectsId
      (\ s a -> s{_plsilProjectsId = a})

-- | The maximum number of log service index resources to return in one
-- operation.
plsilPageSize :: Lens' ProjectsLogServicesIndexesList' (Maybe Int32)
plsilPageSize
  = lens _plsilPageSize
      (\ s a -> s{_plsilPageSize = a})

-- | Restricts the index values returned to be those with a specified prefix
-- for each index key. This field has the form
-- \`\"\/prefix1\/prefix2\/...\"\`, in order corresponding to the
-- [\`LogService indexKeys\`][google.logging.v1.LogService.index_keys].
-- Non-empty prefixes must begin with \`\/\`. For example, App Engine\'s
-- two keys are the module ID and the version ID. Following is the effect
-- of using various values for \`indexPrefix\`: + \`\"\/Mod\/\"\` retrieves
-- \`\/Mod\/10\` and \`\/Mod\/11\` but not \`\/ModA\/10\`. + \`\"\/Mod\`
-- retrieves \`\/Mod\/10\`, \`\/Mod\/11\` and \`\/ModA\/10\` but not
-- \`\/XXX\/33\`. + \`\"\/Mod\/1\"\` retrieves \`\/Mod\/10\` and
-- \`\/Mod\/11\` but not \`\/ModA\/10\`. + \`\"\/Mod\/10\/\"\` retrieves
-- \`\/Mod\/10\` only. + An empty prefix or \`\"\/\"\` retrieves all
-- values.
plsilIndexPrefix :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilIndexPrefix
  = lens _plsilIndexPrefix
      (\ s a -> s{_plsilIndexPrefix = a})

-- | Selector specifying which fields to include in a partial response.
plsilFields :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilFields
  = lens _plsilFields (\ s a -> s{_plsilFields = a})

-- | JSONP
plsilCallback :: Lens' ProjectsLogServicesIndexesList' (Maybe Text)
plsilCallback
  = lens _plsilCallback
      (\ s a -> s{_plsilCallback = a})

instance GoogleAuth ProjectsLogServicesIndexesList'
         where
        _AuthKey = plsilKey . _Just
        _AuthToken = plsilOAuthToken . _Just

instance GoogleRequest
         ProjectsLogServicesIndexesList' where
        type Rs ProjectsLogServicesIndexesList' =
             ListLogServiceIndexesResponse
        request = requestWith loggingRequest
        requestWith rq ProjectsLogServicesIndexesList'{..}
          = go _plsilProjectsId _plsilLogServicesId _plsilLog
              _plsilXgafv
              _plsilUploadProtocol
              (Just _plsilPp)
              _plsilAccessToken
              _plsilUploadType
              _plsilBearerToken
              _plsilDepth
              _plsilPageToken
              _plsilPageSize
              _plsilIndexPrefix
              _plsilCallback
              _plsilQuotaUser
              (Just _plsilPrettyPrint)
              _plsilFields
              _plsilKey
              _plsilOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ProjectsLogServicesIndexesListResource)
                      rq
