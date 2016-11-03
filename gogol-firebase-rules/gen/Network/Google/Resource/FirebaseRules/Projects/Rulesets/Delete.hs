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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Rulesets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a \`Ruleset\` by resource name. If the \`Ruleset\` is referenced
-- by a \`Release\` the operation will fail.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.delete@.
module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Delete
    (
    -- * REST Resource
      ProjectsRulesetsDeleteResource

    -- * Creating a Request
    , projectsRulesetsDelete
    , ProjectsRulesetsDelete

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proPp
    , proAccessToken
    , proUploadType
    , proBearerToken
    , proName
    , proCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.rulesets.delete@ method which the
-- 'ProjectsRulesetsDelete' request conforms to.
type ProjectsRulesetsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete a \`Ruleset\` by resource name. If the \`Ruleset\` is referenced
-- by a \`Release\` the operation will fail.
--
-- /See:/ 'projectsRulesetsDelete' smart constructor.
data ProjectsRulesetsDelete = ProjectsRulesetsDelete'
    { _proXgafv          :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proPp             :: !Bool
    , _proAccessToken    :: !(Maybe Text)
    , _proUploadType     :: !(Maybe Text)
    , _proBearerToken    :: !(Maybe Text)
    , _proName           :: !Text
    , _proCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRulesetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proPp'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proBearerToken'
--
-- * 'proName'
--
-- * 'proCallback'
projectsRulesetsDelete
    :: Text -- ^ 'proName'
    -> ProjectsRulesetsDelete
projectsRulesetsDelete pProName_ =
    ProjectsRulesetsDelete'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proPp = True
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proBearerToken = Nothing
    , _proName = pProName_
    , _proCallback = Nothing
    }

-- | V1 error format.
proXgafv :: Lens' ProjectsRulesetsDelete (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsRulesetsDelete (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | Pretty-print response.
proPp :: Lens' ProjectsRulesetsDelete Bool
proPp = lens _proPp (\ s a -> s{_proPp = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsRulesetsDelete (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsRulesetsDelete (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | OAuth bearer token.
proBearerToken :: Lens' ProjectsRulesetsDelete (Maybe Text)
proBearerToken
  = lens _proBearerToken
      (\ s a -> s{_proBearerToken = a})

-- | Resource name for the ruleset to delete. Format:
-- \`projects\/{project_id}\/rulesets\/{ruleset_id}\`
proName :: Lens' ProjectsRulesetsDelete Text
proName = lens _proName (\ s a -> s{_proName = a})

-- | JSONP
proCallback :: Lens' ProjectsRulesetsDelete (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsRulesetsDelete where
        type Rs ProjectsRulesetsDelete = Empty
        type Scopes ProjectsRulesetsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient ProjectsRulesetsDelete'{..}
          = go _proName _proXgafv _proUploadProtocol
              (Just _proPp)
              _proAccessToken
              _proUploadType
              _proBearerToken
              _proCallback
              (Just AltJSON)
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRulesetsDeleteResource)
                      mempty
