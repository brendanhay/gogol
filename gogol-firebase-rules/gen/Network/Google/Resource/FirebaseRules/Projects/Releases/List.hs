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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Releases.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the \`Release\` values for a project. This list may optionally be
-- filtered by \`Release\` name, \`Ruleset\` name, \`TestSuite\` name, or
-- any combination thereof.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.list@.
module Network.Google.Resource.FirebaseRules.Projects.Releases.List
    (
    -- * REST Resource
      ProjectsReleasesListResource

    -- * Creating a Request
    , projectsReleasesList
    , ProjectsReleasesList

    -- * Request Lenses
    , prlrXgafv
    , prlrUploadProtocol
    , prlrAccessToken
    , prlrUploadType
    , prlrName
    , prlrFilter
    , prlrPageToken
    , prlrPageSize
    , prlrCallback
    ) where

import Network.Google.FirebaseRules.Types
import Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.releases.list@ method which the
-- 'ProjectsReleasesList' request conforms to.
type ProjectsReleasesListResource =
     "v1" :>
       Capture "name" Text :>
         "releases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListReleasesResponse

-- | List the \`Release\` values for a project. This list may optionally be
-- filtered by \`Release\` name, \`Ruleset\` name, \`TestSuite\` name, or
-- any combination thereof.
--
-- /See:/ 'projectsReleasesList' smart constructor.
data ProjectsReleasesList =
  ProjectsReleasesList'
    { _prlrXgafv :: !(Maybe Xgafv)
    , _prlrUploadProtocol :: !(Maybe Text)
    , _prlrAccessToken :: !(Maybe Text)
    , _prlrUploadType :: !(Maybe Text)
    , _prlrName :: !Text
    , _prlrFilter :: !(Maybe Text)
    , _prlrPageToken :: !(Maybe Text)
    , _prlrPageSize :: !(Maybe (Textual Int32))
    , _prlrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReleasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prlrXgafv'
--
-- * 'prlrUploadProtocol'
--
-- * 'prlrAccessToken'
--
-- * 'prlrUploadType'
--
-- * 'prlrName'
--
-- * 'prlrFilter'
--
-- * 'prlrPageToken'
--
-- * 'prlrPageSize'
--
-- * 'prlrCallback'
projectsReleasesList
    :: Text -- ^ 'prlrName'
    -> ProjectsReleasesList
projectsReleasesList pPrlrName_ =
  ProjectsReleasesList'
    { _prlrXgafv = Nothing
    , _prlrUploadProtocol = Nothing
    , _prlrAccessToken = Nothing
    , _prlrUploadType = Nothing
    , _prlrName = pPrlrName_
    , _prlrFilter = Nothing
    , _prlrPageToken = Nothing
    , _prlrPageSize = Nothing
    , _prlrCallback = Nothing
    }


-- | V1 error format.
prlrXgafv :: Lens' ProjectsReleasesList (Maybe Xgafv)
prlrXgafv
  = lens _prlrXgafv (\ s a -> s{_prlrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prlrUploadProtocol :: Lens' ProjectsReleasesList (Maybe Text)
prlrUploadProtocol
  = lens _prlrUploadProtocol
      (\ s a -> s{_prlrUploadProtocol = a})

-- | OAuth access token.
prlrAccessToken :: Lens' ProjectsReleasesList (Maybe Text)
prlrAccessToken
  = lens _prlrAccessToken
      (\ s a -> s{_prlrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prlrUploadType :: Lens' ProjectsReleasesList (Maybe Text)
prlrUploadType
  = lens _prlrUploadType
      (\ s a -> s{_prlrUploadType = a})

-- | Required. Resource name for the project. Format:
-- \`projects\/{project_id}\`
prlrName :: Lens' ProjectsReleasesList Text
prlrName = lens _prlrName (\ s a -> s{_prlrName = a})

-- | \`Release\` filter. The list method supports filters with restrictions
-- on the \`Release.name\`, and \`Release.ruleset_name\`. Example 1: A
-- filter of \'name=prod*\' might return \`Release\`s with names within
-- \'projects\/foo\' prefixed with \'prod\': Name -> Ruleset Name: *
-- projects\/foo\/releases\/prod -> projects\/foo\/rulesets\/uuid1234 *
-- projects\/foo\/releases\/prod\/v1 -> projects\/foo\/rulesets\/uuid1234 *
-- projects\/foo\/releases\/prod\/v2 -> projects\/foo\/rulesets\/uuid8888
-- Example 2: A filter of \`name=prod* ruleset_name=uuid1234\` would return
-- only \`Release\` instances for \'projects\/foo\' with names prefixed
-- with \'prod\' referring to the same \`Ruleset\` name of \'uuid1234\':
-- Name -> Ruleset Name: * projects\/foo\/releases\/prod ->
-- projects\/foo\/rulesets\/1234 * projects\/foo\/releases\/prod\/v1 ->
-- projects\/foo\/rulesets\/1234 In the examples, the filter parameters
-- refer to the search filters are relative to the project. Fully qualified
-- prefixed may also be used.
prlrFilter :: Lens' ProjectsReleasesList (Maybe Text)
prlrFilter
  = lens _prlrFilter (\ s a -> s{_prlrFilter = a})

-- | Next page token for the next batch of \`Release\` instances.
prlrPageToken :: Lens' ProjectsReleasesList (Maybe Text)
prlrPageToken
  = lens _prlrPageToken
      (\ s a -> s{_prlrPageToken = a})

-- | Page size to load. Maximum of 100. Defaults to 10. Note: \`page_size\`
-- is just a hint and the service may choose to load fewer than
-- \`page_size\` results due to the size of the output. To traverse all of
-- the releases, the caller should iterate until the \`page_token\` on the
-- response is empty.
prlrPageSize :: Lens' ProjectsReleasesList (Maybe Int32)
prlrPageSize
  = lens _prlrPageSize (\ s a -> s{_prlrPageSize = a})
      . mapping _Coerce

-- | JSONP
prlrCallback :: Lens' ProjectsReleasesList (Maybe Text)
prlrCallback
  = lens _prlrCallback (\ s a -> s{_prlrCallback = a})

instance GoogleRequest ProjectsReleasesList where
        type Rs ProjectsReleasesList = ListReleasesResponse
        type Scopes ProjectsReleasesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient ProjectsReleasesList'{..}
          = go _prlrName _prlrXgafv _prlrUploadProtocol
              _prlrAccessToken
              _prlrUploadType
              _prlrFilter
              _prlrPageToken
              _prlrPageSize
              _prlrCallback
              (Just AltJSON)
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReleasesListResource)
                      mempty
