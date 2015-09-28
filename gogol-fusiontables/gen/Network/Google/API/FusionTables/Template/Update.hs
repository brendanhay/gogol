{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Template.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.update@.
module Network.Google.API.FusionTables.Template.Update
    (
    -- * REST Resource
      TemplateUpdateAPI

    -- * Creating a Request
    , templateUpdate'
    , TemplateUpdate'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuTemplateId
    , tuUserIp
    , tuKey
    , tuOauthToken
    , tuTableId
    , tuFields
    , tuAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.template.update which the
-- 'TemplateUpdate'' request conforms to.
type TemplateUpdateAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] Template

-- | Updates an existing template
--
-- /See:/ 'templateUpdate'' smart constructor.
data TemplateUpdate' = TemplateUpdate'
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuTemplateId  :: !Int32
    , _tuUserIp      :: !(Maybe Text)
    , _tuKey         :: !(Maybe Text)
    , _tuOauthToken  :: !(Maybe Text)
    , _tuTableId     :: !Text
    , _tuFields      :: !(Maybe Text)
    , _tuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuTemplateId'
--
-- * 'tuUserIp'
--
-- * 'tuKey'
--
-- * 'tuOauthToken'
--
-- * 'tuTableId'
--
-- * 'tuFields'
--
-- * 'tuAlt'
templateUpdate'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateUpdate'
templateUpdate' pTuTemplateId_ pTuTableId_ =
    TemplateUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuTemplateId = pTuTemplateId_
    , _tuUserIp = Nothing
    , _tuKey = Nothing
    , _tuOauthToken = Nothing
    , _tuTableId = pTuTableId_
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TemplateUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TemplateUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | Identifier for the template that is being updated
tuTemplateId :: Lens' TemplateUpdate' Int32
tuTemplateId
  = lens _tuTemplateId (\ s a -> s{_tuTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TemplateUpdate' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TemplateUpdate' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TemplateUpdate' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | Table to which the updated template belongs
tuTableId :: Lens' TemplateUpdate' Text
tuTableId
  = lens _tuTableId (\ s a -> s{_tuTableId = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TemplateUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TemplateUpdate' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TemplateUpdate' where
        type Rs TemplateUpdate' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateUpdate'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuTemplateId
              _tuUserIp
              _tuKey
              _tuOauthToken
              _tuTableId
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TemplateUpdateAPI)
                      r
                      u
