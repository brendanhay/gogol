{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineAttachmentsGet@.
module Mirror.Timeline.Attachments.Get
    (
    -- * REST Resource
      TimelineAttachmentsGetAPI

    -- * Creating a Request
    , timelineAttachmentsGet
    , TimelineAttachmentsGet

    -- * Request Lenses
    , tagQuotaUser
    , tagPrettyPrint
    , tagUserIp
    , tagItemId
    , tagAttachmentId
    , tagKey
    , tagOauthToken
    , tagFields
    , tagAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineAttachmentsGet@ which the
-- 'TimelineAttachmentsGet' request conforms to.
type TimelineAttachmentsGetAPI =
     "timeline" :>
       Capture "itemId" Text :>
         "attachments" :>
           Capture "attachmentId" Text :> Get '[JSON] Attachment

-- | Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ 'timelineAttachmentsGet' smart constructor.
data TimelineAttachmentsGet = TimelineAttachmentsGet
    { _tagQuotaUser    :: !(Maybe Text)
    , _tagPrettyPrint  :: !Bool
    , _tagUserIp       :: !(Maybe Text)
    , _tagItemId       :: !Text
    , _tagAttachmentId :: !Text
    , _tagKey          :: !(Maybe Text)
    , _tagOauthToken   :: !(Maybe Text)
    , _tagFields       :: !(Maybe Text)
    , _tagAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagQuotaUser'
--
-- * 'tagPrettyPrint'
--
-- * 'tagUserIp'
--
-- * 'tagItemId'
--
-- * 'tagAttachmentId'
--
-- * 'tagKey'
--
-- * 'tagOauthToken'
--
-- * 'tagFields'
--
-- * 'tagAlt'
timelineAttachmentsGet
    :: Text -- ^ 'itemId'
    -> Text -- ^ 'attachmentId'
    -> TimelineAttachmentsGet
timelineAttachmentsGet pTagItemId_ pTagAttachmentId_ =
    TimelineAttachmentsGet
    { _tagQuotaUser = Nothing
    , _tagPrettyPrint = True
    , _tagUserIp = Nothing
    , _tagItemId = pTagItemId_
    , _tagAttachmentId = pTagAttachmentId_
    , _tagKey = Nothing
    , _tagOauthToken = Nothing
    , _tagFields = Nothing
    , _tagAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tagQuotaUser :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagQuotaUser
  = lens _tagQuotaUser (\ s a -> s{_tagQuotaUser = a})

-- | Returns response with indentations and line breaks.
tagPrettyPrint :: Lens' TimelineAttachmentsGet' Bool
tagPrettyPrint
  = lens _tagPrettyPrint
      (\ s a -> s{_tagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tagUserIp :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagUserIp
  = lens _tagUserIp (\ s a -> s{_tagUserIp = a})

-- | The ID of the timeline item the attachment belongs to.
tagItemId :: Lens' TimelineAttachmentsGet' Text
tagItemId
  = lens _tagItemId (\ s a -> s{_tagItemId = a})

-- | The ID of the attachment.
tagAttachmentId :: Lens' TimelineAttachmentsGet' Text
tagAttachmentId
  = lens _tagAttachmentId
      (\ s a -> s{_tagAttachmentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tagKey :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagKey = lens _tagKey (\ s a -> s{_tagKey = a})

-- | OAuth 2.0 token for the current user.
tagOauthToken :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagOauthToken
  = lens _tagOauthToken
      (\ s a -> s{_tagOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tagFields :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagFields
  = lens _tagFields (\ s a -> s{_tagFields = a})

-- | Data format for the response.
tagAlt :: Lens' TimelineAttachmentsGet' Text
tagAlt = lens _tagAlt (\ s a -> s{_tagAlt = a})

instance GoogleRequest TimelineAttachmentsGet' where
        type Rs TimelineAttachmentsGet' = Attachment
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsGet{..}
          = go _tagQuotaUser _tagPrettyPrint _tagUserIp
              _tagItemId
              _tagAttachmentId
              _tagKey
              _tagOauthToken
              _tagFields
              _tagAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsGetAPI)
                      r
                      u
