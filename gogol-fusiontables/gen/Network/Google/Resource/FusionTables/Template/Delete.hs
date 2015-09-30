{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Template.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateDelete@.
module Network.Google.Resource.FusionTables.Template.Delete
    (
    -- * REST Resource
      TemplateDeleteResource

    -- * Creating a Request
    , templateDelete'
    , TemplateDelete'

    -- * Request Lenses
    , tddQuotaUser
    , tddPrettyPrint
    , tddTemplateId
    , tddUserIp
    , tddKey
    , tddOauthToken
    , tddTableId
    , tddFields
    , tddAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateDelete@ which the
-- 'TemplateDelete'' request conforms to.
type TemplateDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a template
--
-- /See:/ 'templateDelete'' smart constructor.
data TemplateDelete' = TemplateDelete'
    { _tddQuotaUser   :: !(Maybe Text)
    , _tddPrettyPrint :: !Bool
    , _tddTemplateId  :: !Int32
    , _tddUserIp      :: !(Maybe Text)
    , _tddKey         :: !(Maybe Text)
    , _tddOauthToken  :: !(Maybe Text)
    , _tddTableId     :: !Text
    , _tddFields      :: !(Maybe Text)
    , _tddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tddQuotaUser'
--
-- * 'tddPrettyPrint'
--
-- * 'tddTemplateId'
--
-- * 'tddUserIp'
--
-- * 'tddKey'
--
-- * 'tddOauthToken'
--
-- * 'tddTableId'
--
-- * 'tddFields'
--
-- * 'tddAlt'
templateDelete'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateDelete'
templateDelete' pTddTemplateId_ pTddTableId_ =
    TemplateDelete'
    { _tddQuotaUser = Nothing
    , _tddPrettyPrint = True
    , _tddTemplateId = pTddTemplateId_
    , _tddUserIp = Nothing
    , _tddKey = Nothing
    , _tddOauthToken = Nothing
    , _tddTableId = pTddTableId_
    , _tddFields = Nothing
    , _tddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tddQuotaUser :: Lens' TemplateDelete' (Maybe Text)
tddQuotaUser
  = lens _tddQuotaUser (\ s a -> s{_tddQuotaUser = a})

-- | Returns response with indentations and line breaks.
tddPrettyPrint :: Lens' TemplateDelete' Bool
tddPrettyPrint
  = lens _tddPrettyPrint
      (\ s a -> s{_tddPrettyPrint = a})

-- | Identifier for the template which is being deleted
tddTemplateId :: Lens' TemplateDelete' Int32
tddTemplateId
  = lens _tddTemplateId
      (\ s a -> s{_tddTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tddUserIp :: Lens' TemplateDelete' (Maybe Text)
tddUserIp
  = lens _tddUserIp (\ s a -> s{_tddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tddKey :: Lens' TemplateDelete' (Maybe Text)
tddKey = lens _tddKey (\ s a -> s{_tddKey = a})

-- | OAuth 2.0 token for the current user.
tddOauthToken :: Lens' TemplateDelete' (Maybe Text)
tddOauthToken
  = lens _tddOauthToken
      (\ s a -> s{_tddOauthToken = a})

-- | Table from which the template is being deleted
tddTableId :: Lens' TemplateDelete' Text
tddTableId
  = lens _tddTableId (\ s a -> s{_tddTableId = a})

-- | Selector specifying which fields to include in a partial response.
tddFields :: Lens' TemplateDelete' (Maybe Text)
tddFields
  = lens _tddFields (\ s a -> s{_tddFields = a})

-- | Data format for the response.
tddAlt :: Lens' TemplateDelete' Alt
tddAlt = lens _tddAlt (\ s a -> s{_tddAlt = a})

instance GoogleRequest TemplateDelete' where
        type Rs TemplateDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateDelete'{..}
          = go _tddQuotaUser (Just _tddPrettyPrint)
              _tddTemplateId
              _tddUserIp
              _tddKey
              _tddOauthToken
              _tddTableId
              _tddFields
              (Just _tddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TemplateDeleteResource)
                      r
                      u
